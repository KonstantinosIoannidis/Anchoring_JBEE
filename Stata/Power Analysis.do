run simmvtest.ado
run power_cmd_simmvtest.ado
run power_cmd_simmvtest_init.ado

power simmvtest, n(400 (50) 600) alpha(0.05) sdwta(0.25) a1(0.03) a2(0.16) a3(0.20) a4(0.32) reps(1000) table

power simmvtest, n(400 (50) 600) alpha(0.10) sdwta(0.25) a1(0.03) a2(0.16) a3(0.20) a4(0.32) reps(1000) table