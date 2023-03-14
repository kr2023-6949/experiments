% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['iv_liquid']})
domain("A",iv_liquid).
domain("A",admission_nc).
domain("A",er_sepsis_triage).
domain("A",release_e).
domain("A",iv_antibiotics).
root((respondedexistence,(A,leucocytes,))) :- iota("A",A).
