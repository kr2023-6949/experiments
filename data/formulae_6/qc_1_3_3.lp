% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",release_b).
domain("A",release_a).
root((notchainprecedence,(A,er_sepsis_triage,))) :- iota("A",A).
