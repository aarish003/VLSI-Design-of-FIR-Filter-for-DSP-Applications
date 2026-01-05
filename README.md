# VLSI-Design-of-FIR-Filter-for-DSP-Applications

Project Description
This project presents the **VLSI implementation of a 16-tap FIR filter using Verilog HDL**
for **biomedical digital signal processing applications** such as **ECG noise removal**.
The design is verified using **EDA Playground with Icarus Verilog** and analyzed using
**EPWave waveform viewer**

Objectives
- Design and implement FIR filter using Verilog HDL
- Apply ECG-like noisy input signals
- Verify filtering functionality through simulation
- Analyze output using waveform visualization

Biomedical Applications
- ECG signal denoising
- EEG signal smoothing
- EMG artifact suppression
- Wearable medical devices

Tools and Technologies
- Verilog HDL
- EDA Playground
- Icarus Verilog Simulator
- EPWave Waveform Viewer

Simulation Procedure
1. Paste `design.sv` in the **left editor** of EDA Playground
2. Paste `testbench.sv` in the **right editor**
3. Select:
   - Language: Verilog
   - Simulator: Icarus Verilog
   - Enable **Open EPWave after run**
4. Click **RUN**

Results
The output waveform demonstrates effective noise reduction while preserving the
morphological characteristics of biomedical signals.

