
`timescale 1ns/10ps

module  CONV(	
	input					clk,
	input					reset,
	output				   	busy,	
	input					ready,	
			
	output reg 		[11:0]	iaddr,
	input  signed	[19:0]	idata,	
	
	output reg	 			cwr,
	output reg		[11:0]	caddr_wr,
	output reg 		[19:0]	cdata_wr,

	output reg 		 	crd,
	output reg 		[11:0]	caddr_rd,
	input	   		[19:0]	cdata_rd,
	
	output reg 		[2:0]	csel
	);

// TODO, FIXME, XXX
// XXX: this version need 'CONV.sdc' to be set at 'create_clock -name clk  -period 9.0   [get_ports  clk]' for it to work

//==================================================
//		REG / WIRE / PARA (67)
//==================================================

reg [2:0] state, next_state; //only sufficient for 0 ~ 7
parameter 	IDLE = 0, 
			CONV_BORDER = 1, CONV = 2, MAX = 3, //due to convolution sepical demands, we use a sperate state
			WRITE_L0 = 4, WRITE_L1 = 5, FIN = 6,
			BUFF_1 = 7;

reg [3:0] step;
reg [11:0] addr_row; //remember the starting address

reg [20:0] save_data; //use for max pooling (it is possible to use 'acc' and not create a new reg 'save_data')


reg signed [41:0] acc; //counting up the total number for convolution
parameter signed KER_0 = 20'h0A89E, KER_1 = 20'h092D5, KER_2 = 20'h06D43,
		 		 KER_3 = 20'h01004, KER_4 = 20'hF8F71, KER_5 = 20'hF6E54,
				 KER_6 = 20'hFA6D7, KER_7 = 20'hFC834, KER_8 = 20'hFAC19, BIAS = {4'b0, 20'h01310, 16'b0};

//==================================================
//		FSM
//==================================================

always @(posedge clk, posedge reset) begin
	if(reset) state <= IDLE;
	else state <= next_state;
end

always @(*) begin
	case(state)
		IDLE: begin
			if(!ready) next_state = CONV_BORDER;
			else next_state = state;
		end
		CONV_BORDER: begin
			//though there may be some address that have fewer steps, but we can save area by not adding those conditions
			//it will take more cycles to finish then it needed to, but this contest priority consideration is cell area
			if(step == 5) next_state = WRITE_L0;
			else next_state = state;
		end
		CONV: begin
			if(step == 8) next_state = WRITE_L0;
			else next_state = state;
		end
		BUFF_1: begin	//reseting values after going from convolution to max pooling
			next_state = MAX;
		end
		MAX: begin
			if(step == 3) next_state = WRITE_L1;
			else next_state = state;
		end
		WRITE_L0: begin	//writing state after convolution
			if(caddr_wr == 4095) next_state = BUFF_1;
			//these addresses in this condition indicates that the next address is at the border of the image
			else if(caddr_wr[5:0] == 6'b11_1110 || caddr_wr[5:0] == 6'b11_1111) next_state = CONV_BORDER;
			else next_state = CONV;
		end
		WRITE_L1: begin	//writing state after max pooling
			if(caddr_wr == 1024) next_state = FIN;
			else next_state = MAX;
		end
		default: next_state = state;
	endcase
end

//==================================================
//		COMBINATIONAL LOGIC
//==================================================

//busy 
assign busy = (ready)? !reset : (state != FIN);

//cdata_wr
always @(*) begin
	if(state == CONV || state == CONV_BORDER || state == WRITE_L0 || state == BUFF_1) begin
		if(acc <= 0) cdata_wr = 0;
		else cdata_wr = acc[35:16] + acc[15];	//only needed Q4.16 & rounding up
	end else cdata_wr = save_data;	//this is for max pooling
end

//==================================================
//		SEQUENTIAL LOGIC
//==================================================

//step
always @(posedge clk, posedge reset) begin
	if(reset) step <= 0;
	else begin
		case(state)
			CONV_BORDER,
			CONV,
			MAX: step <= step + 1;
			default: step <= 0;
		endcase
	end
end

//csel
always @(posedge clk, posedge reset) begin
	if(reset) csel <= 3'b000;
	else begin
		case(state)
			MAX,
			WRITE_L0: csel <= 3'b001;
			WRITE_L1: csel <= 3'b011;
			default: csel <= 3'b000;
		endcase
	end
end

//crd & cwr (output signal)
always @(posedge clk, posedge reset) begin
	if(reset) begin
		crd <= 0;
		cwr <= 0;
	end else begin
		case(state)
		WRITE_L0,
		WRITE_L1: begin
			crd <= 0;
			cwr <= 1;
		end
		MAX: begin
			crd <= 1;
			cwr <= 0;
		end
		default: begin
			crd <= 0;
			cwr <= 0;
		end
		endcase
	end
end

//addr
always @(posedge clk, posedge reset) begin
	if(reset) begin
		iaddr <= 0;
		addr_row <= 0;
		caddr_wr <= 0;
		caddr_rd <= 0;
	end else begin
		case(state)
			CONV_BORDER: begin
				if(caddr_wr <= 63 || caddr_wr >= 4032) begin
					case(step)
						0: begin
							iaddr <= addr_row;
							if(caddr_wr[5:0] == 6'b11_1110 || caddr_wr[5:0] == 6'b11_1111) caddr_wr <= caddr_wr + 1;
						end
						1: iaddr <= iaddr + 1;
						2: iaddr <= iaddr + 63;
						3: begin
							iaddr <= iaddr + 1;
							if(caddr_wr == 63) begin
								addr_row <= 0;
							end else if(caddr_wr[5:0] == 6'b11_1111) begin
								addr_row <= addr_row + 2;
							end
						end
					endcase
				end else begin
					case(step)
						0: begin
							caddr_wr <= caddr_wr + 1;
							iaddr <= addr_row;
						end
						1: iaddr <= iaddr + 1;
						2: iaddr <= iaddr + 63;
						3: iaddr <= iaddr + 1;
						4: iaddr <= iaddr + 63;
						5: begin
							iaddr <= iaddr + 1;
							if(caddr_wr[5:0] == 6'b11_1111) begin
								addr_row <= addr_row + 2;
							end
						end
					endcase
				end
			end
			CONV: begin
				if(caddr_wr <= 63 || caddr_wr >=4032) begin //top row
					case(step)
						0: begin
							caddr_wr <= caddr_wr + 1;
							iaddr <= addr_row;
						end
						1: iaddr <= iaddr + 1;
						2: iaddr <= iaddr + 1;
						3: iaddr <= iaddr + 62;
						4: iaddr <= iaddr + 1;
						5: begin
							addr_row <= addr_row + 1;
							iaddr <= iaddr + 1;
						end
					endcase
				end else begin
					case(step)
						0: begin
							caddr_wr <= caddr_wr + 1;
							iaddr <= addr_row;
						end
						1: iaddr <= iaddr + 1;
						2: iaddr <= iaddr + 1;
						3: iaddr <= iaddr + 62;
						4: iaddr <= iaddr + 1;
						5: iaddr <= iaddr + 1;
						6: iaddr <= iaddr + 62;
						7: iaddr <= iaddr + 1;
						8: begin
							addr_row <= addr_row + 1;
							iaddr <= iaddr + 1;
						end
					endcase
				end
			end
			BUFF_1: begin
				iaddr <= 0;
				addr_row <= 0;
				caddr_wr <= 12'b1111_1111_1111;	//the initla MAX state will overflow it to 0
				caddr_rd <= 12'b1111_1111_1111;
			end
			MAX: begin
				case(step)
					0: begin
						caddr_wr <= caddr_wr + 1;
						caddr_rd <= addr_row;
					end
					1: caddr_rd <= caddr_rd + 1;
					2: caddr_rd <= caddr_rd + 63;
					3: begin
						if(caddr_wr[4:0] == 5'b1_1111) begin
							addr_row <= addr_row + 66;
							
						end else begin
							addr_row <= addr_row + 2;
							
						end
						caddr_rd <= caddr_rd + 1;
					end
				endcase
			end
		endcase
	end
end


//acc
always @(posedge clk, posedge reset) begin
	if(reset) acc <= 0;
	else begin
		case(state)
			CONV_BORDER: begin
				if(caddr_wr == 0) begin //top left corner
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_4;
						2: acc <= acc + idata*KER_5;
						3: acc <= acc + idata*KER_7;
					endcase
				end else if(caddr_wr == 63) begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_3;
						2: acc <= acc + idata*KER_4;
						3: acc <= acc + idata*KER_6;
					endcase
				end else if(caddr_wr == 4032) begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_1;
						2: acc <= acc + idata*KER_2;
						3: acc <= acc + idata*KER_4;
					endcase
				end else if(caddr_wr == 4095) begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_0;
						2: acc <= acc + idata*KER_1;
						3: acc <= acc + idata*KER_3;
					endcase
				end else if(caddr_wr[5:0] == 6'b11_1111) begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_0;
						2: acc <= acc + idata*KER_1;
						3: acc <= acc + idata*KER_3;
						4: acc <= acc + idata*KER_4;
						5: acc <= acc + idata*KER_6;
					endcase
				end else begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_1;
						2: acc <= acc + idata*KER_2;
						3: acc <= acc + idata*KER_4;
						4: acc <= acc + idata*KER_5;
						5: acc <= acc + idata*KER_7;
					endcase
				end
			end
			CONV: begin
				if(caddr_wr <= 63) begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_3;
						2: acc <= acc + idata*KER_4;
						3: acc <= acc + idata*KER_5;
						4: acc <= acc + idata*KER_6;
						5: acc <= acc + idata*KER_7;
					endcase
				end else if(caddr_wr <= 4031) begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_0;
						2: acc <= acc + idata*KER_1;
						3: acc <= acc + idata*KER_2;
						4: acc <= acc + idata*KER_3;
						5: acc <= acc + idata*KER_4;
						6: acc <= acc + idata*KER_5;
						7: acc <= acc + idata*KER_6;
						8: acc <= acc + idata*KER_7;
					endcase
				end else begin
					case(step)
						0: acc <= 0;
						1: acc <= acc + idata*KER_0;
						2: acc <= acc + idata*KER_1;
						3: acc <= acc + idata*KER_2;
						4: acc <= acc + idata*KER_3;
						5: acc <= acc + idata*KER_4;
					endcase
				end
			end
			WRITE_L0: begin
				if(caddr_wr >= 4032 && caddr_wr < 4095) acc <= acc + idata*KER_5 + BIAS;
				else if(caddr_wr == 4095) acc <= acc + idata*KER_4 + BIAS;
				else if(caddr_wr[5:0] == 6'b11_1111) acc <= acc + idata*KER_7 + BIAS;
				else acc <= acc + idata*KER_8 + BIAS;
			end
			default: acc <= 0;
		endcase
	end
end

//save_data
always @(posedge clk, posedge reset) begin
	if(reset) begin
		save_data <= 0;
	end else begin
		if(state == MAX) begin
			case(step)
				1: save_data <= cdata_rd;
				2,3: if(save_data < cdata_rd) save_data <= cdata_rd;
			endcase
		end else if(state == WRITE_L1) begin
			if(save_data < cdata_rd) save_data <= cdata_rd;
		end else begin
			//reset 'save_data' after every evalutation
			save_data <= 0;
		end
	end
end



endmodule

