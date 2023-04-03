capture program drop power_cmd_simmvtest_init
program power_cmd_simmvtest_init, sclass
    sreturn local pss_colnames "sdwta a1 a2 a3 a4"
    sreturn local pss_numopts  "sdwta a1 a2 a3 a4"
end