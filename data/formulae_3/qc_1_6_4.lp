% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['iv_liquid']})
domain("A",iv_liquid).
domain("A",er_sepsis_triage).
domain("A",release_c).
domain("A",release_b).
domain("A",leucocytes).
domain("A",release_e).
root((respondedexistence,(A,leucocytes,))) :- iota("A",A).
