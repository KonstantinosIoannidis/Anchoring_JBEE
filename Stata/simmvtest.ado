capture program drop simmvtest
program simmvtest, rclass
version 17.0
** Define input parameters and default values **
	syntax, n(integer)	      	/// total observations
		[alpha(real 0.05)   	///  alpha level
		sdwta(real 0.25)        ///  standard deviation
		a1(real 0.02)           ///  correlation in FullInfo
		a2(real 0.15)           ///  correlation in RangeInfo
		a3(real 0.25)	     	///  correlation in RandomInfo
		a4(real 0.35)	     	///  correlation in NoInfo
	]
** Generate random data **
clear
set obs `n'
generate treatment = runiformint(1,4)
generate anchor = runiform(0,1)
gen anchor_group = (anchor>=0.5)
generate wta = rnormal(0.5,`sdwta')+`a1'*anchor*(treatment==1)*(anchor_group==1)-`a1'*anchor*(treatment==1)*(anchor_group==0)+`a2'*anchor*(treatment==2)*(anchor_group==1)-`a2'*anchor*(treatment==2)*(anchor_group==0) + `a3'*anchor*(treatment==3)*(anchor_group==1) -`a3'*anchor*(treatment==3)*(anchor_group==0) + `a4'*anchor*(treatment==4)*(anchor_group==1) -`a4'*anchor*(treatment==4)*(anchor_group==0)       
** Test for equality of correlations **
	mvtest correlations wta anchor, by(treatment)
** Return results **
	return scalar pvalue = r(p_chi2)
	return scalar reject = (r(p_chi2)<`alpha') 
end