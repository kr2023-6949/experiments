% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['iv_liquid']})
domain("A",iv_liquid).
domain("A",er_registration).
domain("A",er_sepsis_triage).
root((respondedexistence,(A,er_triage,))) :- iota("A",A).
