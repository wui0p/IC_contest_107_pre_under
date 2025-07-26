# 🧠 ICCAD 2019 Taiwan — Image Convolutional Circuit

This is my attempt at solving the **2019 Taiwan IC Design Contest** undergraduate-level problem:  
**Cell-Based Digital Circuit Design – Image Convolutional Circuit (CONV).**

The project was based on the official contest problem: https://drive.google.com/drive/folders/1SLUKpYJWn8X3FaiH7jsgb2EB31Y5AGsV.

> ⚠️ **Note:** I'm still working on it, and it's not fully complete or verified yet. I'm using this repo to track my progress and learn as I go.

---

## 🧾 What’s this about?

The goal is to design a Verilog circuit that processes a grayscale image (64×64), using:
- **Layer 0:** Convolution (3×3 kernel) + ReLU
- **Layer 1:** Max-pooling (2×2 window, stride 2)

It reads image data from a testfixture memory, processes it layer by layer, and writes the result back into memory.  
This simulates a very simplified version of what a convolutional neural network might do—implemented in hardware.

---

## 📂 Files

| Folder              | Description |
|--------------------------|-------------|
| `CONV.v`                 | My Verilog design (in progress) |
| `testfixture.v`          | Provided testbench to simulate the design |
| `CONV_syn.v`             | Gate-level netlist (from synthesis) |
| `CONV_syn.sdf`           | Timing file for gate-level simulation |
| `CONV.sdc`               | Constraints for synthesis (only clock cycle is editable) |
| `tsmc13_neg.v`           | Standard cell library used in gate-level sim |
| `synopsys_dc.setup`      | Setup script for Synopsys DC |
| `report.000`             | Draft report file (also WIP) |
| `E_ICC2019_priliminary_univ_cell_based.pdf` | Official contest problem description|
| `dat_univ/`              | Input and expected output data files |
| `old_CONV.v`             | An earlier or backup version of my design |

---

## 🙋‍♂️ Why I’m doing this

I'm studying digital design and wanted to challenge myself by working through a real-world IC contest problem.  
It's okay if it's not perfect right now—I'm using this to improve my understanding of:
- FSM design  
- Memory handling in hardware  
- Fixed-point arithmetic  
- RTL to gate-level flow

If you have any suggestions, feel free to leave a comment or open an issue. Thanks!

## 📩 Contact
Feel free to reach out if you have any questions! <br>
✉️ GMAIL : kasmykas2233@gmail.com <br>
🌐 HackMD : https://hackmd.io/@wui0p/S1RqsJ_fee


