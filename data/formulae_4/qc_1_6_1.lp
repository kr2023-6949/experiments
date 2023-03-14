% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",release_c).
domain("A",release_a).
domain("A",leucocytes).
domain("A",iv_antibiotics).
domain("A",crp).
root((respondedexistence,(A,er_registration,))) :- iota("A",A).
