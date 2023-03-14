% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",crp).
domain("A",release_e).
domain("A",release_c).
domain("A",release_a).
domain("A",er_triage).
root((notchainprecedence,(A,er_sepsis_triage,))) :- iota("A",A).
