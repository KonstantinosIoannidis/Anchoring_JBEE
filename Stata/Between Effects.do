** Main effects between treatments (reported before Result 1) **
mvtest correlations anchor wta, by(treatment)
preserve
mvtest correlations anchor wta if treatment !=3, by(treatment)
mvtest correlations anchor wta if treatment !=2, by(treatment)
replace treatment = 2 if treatment == 3
mvtest correlations anchor wta, by(treatment)
forvalues j = 1(1)1000 {
	forvalues i = 1(1)100 {
		quietly {
			gen subset`i' = rbinomial(1, 0.5) if treatment == 2 | treatment == 3
			replace subset`i' = 1 if subset`i' == .
			mvtest correlations anchor wta if subset`i' == 1, by(treatment)
			gen test`i' = r(p_chi2)
		}
		drop subset*
	}
	egen average_test`j' = rowmean(test1-test100)
	drop test*
}
egen average_test = rowmean(average_test1-average_test1000)
sum average_test
drop average_test*
restore