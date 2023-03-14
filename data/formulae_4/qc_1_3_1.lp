% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",er_registration).
root((respondedexistence,(A,er_registration,))) :- iota("A",A).
