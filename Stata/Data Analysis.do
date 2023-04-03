** Power analysis **
do "..\Stata\Power Analysis.do" 

** Prepare raw experimental data **
import delimited "..\Data\Experimental Data.csv", encoding(UTF-8) clear
do "..\Stata\Prepare Raw Data.do"

** Demographics (section 2.5) **
tab gender
tab education
sum age

** Results **
do "..\Stata\Between Effects.do" 
do "..\Stata\Within Effects.do" 
do "..\Stata\Pairwise Tests.do" 
tab treatment, sum(anchor_influence)
tab treatment, sum(anchor_demand)


