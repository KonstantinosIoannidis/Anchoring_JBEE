## Description

This depository includes the data and the Stata code used in Ioannidis K. (2023). [Anchoring on valuations and perceived informativeness](here_goes_link_when_published). *Journal of Behavioral and Experimental Economics*, 6(1): 77-94

### Abstract

Anchoring is a cognitive bias whereby individuals decisions are influenced by an uninformative number, the anchor. Anchoring bias for valuations of goods has important implications for consumer decisions, but its' robustness has been questioned by recent studies. In this study, we investigate the effect of the perceived informativeness of the anchor on valuations of goods. In an online experiment we vary the amount of information about the anchor generating process, and hypothesise that the more information provided, the less scope is left for the anchor to be perceived as non-random/informative, thus mitigating anchoring effects.

### Software

The analysis was conducted using ```Stata 17```.

### Files

The files are stored in two folders: Data, which contains data from the experiment and the meta analysis, and Stata, which contains the Stata code to produce every result in the paper.

1. Data
   * Experimental Data.csv (*The raw data from the experiment in csv format*)
   * Experimental Codebook.md (*Codebook for ```Experimental Data.csv```*)
2. Stata
   * Data Analysis.do (*Calls and executes all other files*)
   * Prepare Raw Data.do (*Cleans raw experimental data and prepares it for analysis*)

### Instructions
To run the code, you only need to run **Data Analysis.do**.

## Contributing

**[Konstantinos Ioannidis](http://konstantinosioannidis.com/)** 
For any questions, please email me here **ioannidis.a.konstantinos@gmail.com**.
