## Description

This repository includes the data and the Stata code used in Ioannidis K. (2023). [Anchoring on valuations and perceived informativeness](https://www.sciencedirect.com/science/article/pii/S2214804323000861). *Journal of Behavioral and Experimental Economics*, 106(1): 1-7

### Abstract

Anchoring is a cognitive bias whereby individuals' decisions are influenced by an uninformative number, the anchor. Anchoring bias for valuations of goods has important implications for consumer decisions, but its' robustness has been questioned by recent studies. We investigate the effect of the perceived informativeness of the anchor on valuations of goods. In an online experiment, we vary the amount of information about the process by which the anchor was determined, and hypothesise that the more information provided, the less scope is left for the anchor to be perceived as non-random/informative, thus mitigating anchoring effects. Our results provide evidence that the perceived informativeness of the anchor does affect anchoring effects. Contrary to our prediction, we find stronger anchoring effects when more information is presented.

### Software

The analysis was conducted using ```Stata 17```.

### Files

The files are stored in two folders: Data, which contains data from the experiment, and Stata, which contains the Stata code to produce every result in the paper.

1. Data
   * Experimental Data.csv (*The raw data from the experiment in csv format*)
   * Experimental Codebook.md (*Codebook for ```Experimental Data.csv```*)
2. Stata
   * Data Analysis.do (*Calls and executes all other files*)
   * Power Analysis.do (*Calls and executes the files for the power analysis results in Subsection 2.4*)
   * Prepare Raw Data.do (*Cleans raw experimental data and prepares it for analysis*)
   * Between Effects.do (*Produces Result 1 in Section 3*)
   * Within Effects.do (*Produces Result 2 in Section 3*)
   * Pairwise Tests.do (*Produces Result 3 in Section 3*)
   * Power 
      * simmvtest.ado (*Creates a program that simulates data, tests main hypothesis, and stores rejection or not*)
      * power_cmd_simmvtest.ado (*Creates a program that calls simvest, and stores mean rejection rates*)
      * power_cmd_simmvtest_init.ado (*Embeds simvest into the standard power framework of Stata*)

### Instructions
To run the code, you only need to run **Data Analysis.do**.

## Contributing

**[Konstantinos Ioannidis](http://konstantinosioannidis.com/)** 
For any questions, please email me here **ioannidis.a.konstantinos@gmail.com**.
