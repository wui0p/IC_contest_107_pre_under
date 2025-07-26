
`timescale 1ns/10ps

module  CONV(
	input		clk,
	input		reset,
	output		busy,	
	input		ready,	
			
	output		[11:0] iaddr,
	input		[19:0] idata,	
	
	output	 	cwr,
	output	 	[11:0] caddr_wr,
	output	 	[19:0] cdata_wr,
	
	output	 	crd,
	output	 	[11:0] caddr_rd,
	input	 	[19:0] cdata_rd,
	
	output	 	[2:0] csel
	);

//=============================================================
//	WIRE / REG / INT
//=============================================================

	reg [19:0] pix [0:8];
	reg [19:0] enter;
	reg [19:0] max [0:1];
	integer i, p0, p1, addr, fill;
	reg flag_write;

	reg [3:0] state, next_state;
	parameter	IDLE = 0, READ_P0_0 = 1, READ_P0_1 = 2, READ_P0_2 = 3, READ_P0_3 = 4, READ_P0_4 = 5,
				READ_P0_5 = 6, READ_P0_6 = 7, READ_P0_7 = 8, READ_P0_8 = 9, WRITE_P0 = 10, CLEAN = 11,
				READ_P1_0 = 12, READ_P1_1 = 13, READ_P1_2 = 14, READ_P1_3 = 15, WRITE_P1 = 16, FIN = 17;

	reg [19:0] kernel [0:8];
	reg [19:0] bias;

	reg busy_reg;
	reg [11:0] iaddr_reg;
	reg cwr_reg;
	reg [11:0] caddr_wr_reg;
	reg [19:0] cdata_wr_reg;
	reg crd_reg;
	reg [11:0] caddr_rd_reg;
	reg [2:0] csel_reg;

//=============================================================
//	FSM (NEXT_STATE)
//=============================================================

	always @(posedge clk, posedge reset) begin
		if(reset) state = IDLE;
		else state = next_state;
	end

	always @(*) begin
		case(state)
			IDLE: next_state = (ready && !reset)? READ_P0_0 : IDLE;
			READ_P0_0: next_state = READ_P0_1;
			READ_P0_1: next_state = READ_P0_2;
			READ_P0_2: next_state = READ_P0_3;
			READ_P0_3: next_state = READ_P0_4;
			READ_P0_4: next_state = READ_P0_5;
			READ_P0_5: next_state = READ_P0_6;
			READ_P0_6: next_state = READ_P0_7;
			READ_P0_7: next_state = READ_P0_8;
			READ_P0_8: next_state = WRITE_P0;
			WRITE_P0: next_state = (p0 == 4096)? CLEAN : READ_P0_0;
			CLEAN: next_state = READ_P1_0;
			READ_P1_0: next_state = READ_P1_1;
			READ_P1_1: next_state = READ_P1_2;
			READ_P1_2: next_state = READ_P1_3;
			READ_P1_3: next_state = WRITE_P1;
			WRITE_P1: next_state = (p1 == 1024)? FIN : READ_P1_0;
			FIN: next_state = FIN;
		endcase
	end

//=============================================================
//	FSM (STATE)
//=============================================================

	always @(posedge clk) begin
		case(state)
			IDLE: begin
				if(reset) begin
					p0 = 0;
					addr = 0;
					fill = 0;
					flag_write = 0;
					csel_reg = 3'b000;
					kernel[0] = 20'h0A89E;
					kernel[1] = 20'h092D5;
					kernel[2] = 20'h06D43;
					kernel[3] = 20'h01004;
					kernel[4] = 20'hF8F71;
					kernel[5] = 20'hF6E54;
					kernel[6] = 20'hFA6D7;
					kernel[7] = 20'hFC834;
					kernel[8] = 20'hFAC19;
					bias = 20'h01310;
				end
			end
			READ_P0_0: begin
				busy_reg = 1;
				csel_reg = 3'b000;
				cwr_reg = 0;
				enter = 0;
				iaddr_reg = addr;
			end
			READ_P0_1,
			READ_P0_2,
			READ_P0_3,
			READ_P0_4,
			READ_P0_5,
			READ_P0_6,
			READ_P0_7,
			READ_P0_8: iaddr_reg = addr;
			WRITE_P0: begin
				csel_reg = 3'b001;
				cwr_reg = 1;
				caddr_wr_reg = p0;
				for(i=0; i<=8; i=i+1) begin
					enter = enter + (pix[i]*kernel[i]);
				end
				enter = enter + bias;
				if(enter[19]) cdata_wr_reg = 0;
				else cdata_wr_reg = enter;
				p0 = p0 + 1;
			end
			CLEAN: begin
				p1 = 0;
				addr = 0;
				caddr_wr_reg = 0;
			end
			READ_P1_0: begin
				csel_reg = 3'b001;
				crd_reg = 1;
				cwr_reg = 0;
				caddr_rd_reg = addr;
			end
			READ_P1_1,
			READ_P1_2,
			READ_P1_3: caddr_rd_reg = addr;
			WRITE_P1: begin
				csel_reg = 3'b011;
				cwr_reg = 1;
				crd_reg = 0;
				caddr_wr_reg = p1;
				max[0] = (pix[0] > pix[1])? pix[0] : pix[1];
				max[1] = (pix[1] > pix[2])? pix[1] : pix[2];
				cdata_wr_reg = (max[0] > max[1])? max[0] : max[1];
				p1 = p1 + 1;
			end
			FIN: busy_reg = 0;
		endcase
	end

	always @(negedge clk) begin
		case(state)
            READ_P0_0: begin
				if(p0 <= 63 || p0%64==0) pix[0] = 0;
				else begin
					pix[0] = idata;
					addr = addr + 1;
				end
			end
			READ_P0_1: begin
				if(p0 <= 63) pix[1] = 0;
				else begin
					pix[1] = idata;
					addr = addr + 1;
				end
			end
			READ_P0_2: begin
				if(p0 <= 63 || (p0+1)%64==0) pix[2] = 0;
				else begin
					pix[2] = idata;
					addr = addr + 62;
				end
			end
			READ_P0_3: begin
				if(p0%64==0) pix[3] = 0;
				else begin
					pix[3] = idata;
					addr = addr + 1;
				end
			end
			READ_P0_4: begin
				pix[4] = idata;
				addr = addr + 1;
			end
			READ_P0_5: begin
				if((p0+1)%64==0 && p0 != 0) pix[5] = 0;
				else begin
					pix[5] = idata;
					addr = addr + 62;
				end
			end
			READ_P0_6: begin
				if(p0 >= 4032 || p0%64==0) pix[6] = 0;
				else begin
					pix[6] = idata;
					addr = addr + 1;
				end
			end
			READ_P0_7: begin
				if(p0 >= 4032) pix[7] = 0;
				else begin
					pix[7] = idata;
					addr = addr + 1;
				end
			end
			READ_P0_8: begin
				if(p0 >= 4032 || (p0+1)%64==0 && p0 != 0) pix[8] = 0;
				else pix[8] = idata;

				if((p0+1) <= 63) addr = p0;
				else if((p0+1)%64==0) addr = p0 - 63;
				else addr = p0 - 64;
			end
			//////////////////////////////////////////
			READ_P1_0: begin
				pix[0] = cdata_rd;
				addr = addr + 1;
			end
			READ_P1_1: begin
				pix[1] = cdata_rd;
				addr = addr + 63;
			end
			READ_P1_2: begin
				pix[2] = cdata_rd;
				addr = addr + 1;
			end
			READ_P1_3: begin
				pix[3] = cdata_rd;
				if((p1+1)%32==0) addr = addr + 1;
				else addr = addr - 63;
			end
		endcase
	end

//=============================================================
//	ASSIGN
//=============================================================

	assign busy = busy_reg;
	assign iaddr = iaddr_reg;
	assign cwr = cwr_reg;
	assign caddr_wr = caddr_wr_reg;
	assign cdata_wr = cdata_wr_reg;
	assign crd = crd_reg;
	assign caddr_rd = caddr_rd_reg;
	assign csel = csel_reg;


endmodule

