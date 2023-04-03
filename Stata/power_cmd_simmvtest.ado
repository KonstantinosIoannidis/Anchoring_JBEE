capture program drop power_cmd_simmvtest
program power_cmd_simmvtest, rclass
version 17.0
** Define input parameters and default values **
	syntax, n(integer)	      /// total observations
		[alpha(real 0.05)   ///  alpha level
		sdwta(real 0.25)           ///  correlation in FullInfo
		a1(real 0.02)           ///  correlation in FullInfo
		a2(real 0.15)           ///  correlation in RangeInfo
		a3(real 0.25)	     ///  correlation in RandomInfo
		a4(real 0.35)	     ///  correlation in NoInfo
		reps(integer 100)]  //   Number of repetitions
    // GENERATE THE RANDOM DATA AND TEST THE NULL HYPOTHESIS
    quietly {
        simulate reject=r(reject), reps(`reps'): simmvtest, n(`n') alpha(`alpha') sdwta(`sdwta') a1(`a1') a2(`a2') a3(`a3') a4(`a4')
        summarize reject
    }
    // RETURN RESULTS
    return scalar power = r(mean)
    return scalar N = `n'
    return scalar alpha = `alpha'
    return scalar sdwta = `sdwta'
    return scalar a1 = `a1'
    return scalar a2 = `a2'
    return scalar a3 = `a3'
    return scalar a4 = `a4'
end