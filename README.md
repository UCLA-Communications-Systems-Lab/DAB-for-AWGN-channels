Code for both versions of the DAB algorithm as described in the paper "Finite-Support Capacity-Approaching Distributions for AWGN Channel" are in this repository. See below for instructions on how to run the demos. 

# DAB-for-AWGN-channels
You can type Ctrl-C twice while the figures are being updated, if you wish to cancel the simulation.
## Amplitude Constrained
Run the script "Demo_DAB_AC_AWGN.m" in the folder "Amplitude Constrained AWGN DAB" to see the DAB algorithm in action. Figures will show the live status of the DAB algorithm being applied for various SNRs. 

Figure 1 plots the DAB optimized input PMFs, which are practically optimal (the upper and lower bound converge with a tolerance of 10e-5)

Figure 2 plots the AC-AWGN channel capacity, log input cardinality, and input entropy as a function of 1/N (dB).

Figure 3 plots the difference between true SNR (known only after optimizing the input distribution, and 1/N (the SNR, assuming all the probability isd assignment to the maximum amplitude. 

![AC Plots Screenshot](/ACAWGN_Demo_SC.jpg)

## Power Constrained
Run the script "Demo_DAB_PC_AWGN.m" in the folder "Power Constrained AWGN DAB" to see the DAB algorithm in action. Figures will show the live status of the DAB algorithm being applied for various SNRs, with different predefined input cardinalities. Three figures will show up, as can be seen below. 

Figure 1 plots the rate achieved by DAB optimized input PMFs for the PCAWGN channel (for which the capacity achieving distribution is continuous) 

Figure 2 plots the evolution of the input PMF as DAB optimizes the input PMF for a given input cardinality and SNR

Figure 3 plots the DAB optimized input PMFs, where the input cardinalities 2,4,8, and 16 (top left, top right, bottom left, bottom right subfigures) are chosen as examples. 

![PC Plots Screenshot](/PCAWGN_Demo_SC.jpg)
