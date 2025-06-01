# PAM Matched Filtering Simulation

This project simulates digital communication systems using **Pulse Amplitude Modulation (PAM)** under the influence of **Additive White Gaussian Noise (AWGN)**. It demonstrates how **matched filtering** can improve signal detection accuracy and reduce the bit error rate (BER).

The project includes both MATLAB code and Simulink models to analyze the performance of **2-level and M-level PAM** modulation schemes. It also provides detailed plots showing **BER vs Signal-to-Noise Ratio (SNR)** for different scenarios.

---

## 🔧 Features

- Simulates digital transmission of PAM signals over noisy channels  
- Supports **2-PAM**, **4-PAM**, **8-PAM**, and more  
- Applies **matched filtering** to improve detection  
- Computes and plots **BER vs SNR**  
- Includes:  
  - MATLAB script-based simulation  
  - Simulink block-based simulation  
  - Technical report summarizing methodology, results, and analysis  

---

## 📂 Contents

```
PAM-Matched-Filtering-Simulation/
├── probability.m         # MATLAB script for simulation
├── Basic_Components_Of_System.slx       # Simulink model (if available)
├── CIE 237 project.pdf                   # Full project report
└── README.md                    # This file
```

---

## ▶️ How to Use

### MATLAB Script

1. Open the file `probability.m` in MATLAB.  
2. Run the script:
   ```matlab
   probability
   ```
3. The script will:
   - Generate random PAM symbols  
   - Add AWGN noise for different SNR values  
   - Apply matched filtering  
   - Demodulate the received signal and compute the Bit Error Rate (BER)  
   - Plot BER vs SNR for 2-level and M-level PAM modulation schemes  

### Simulink Model

1. Open the Simulink file `Basic_Components_Of_System.slx`.  
2. Run the simulation.  
3. The model simulates the full PAM transmission system including:
   - Signal generation  
   - Modulation  
   - Channel with AWGN  
   - Matched filter  
   - Error rate computation  
4. Use Simulink scopes and displays to visualize the performance and signal behavior.



## 📊 Sample Output

> BER vs SNR curve showing improved detection with matched filtering



## 🧠 Concepts Used

- **Pulse Amplitude Modulation (PAM)**  
- **Additive White Gaussian Noise (AWGN)**  
- **Matched Filtering**  
- **Bit Error Rate (BER)**  
- **Signal-to-Noise Ratio (SNR)**  

---

## 📜 License

This project is open-source and provided for educational and research use. You are free to use, modify, and share it with appropriate credit.

---

## 👤 Author

**Amira Sherif**  
Simulation and Signal Processing Enthusiast
