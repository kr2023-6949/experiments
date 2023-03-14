% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['admission_nc']})
domain("A",admission_nc).
domain("A",er_registration).
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",release_a).
root((choice,(A,er_sepsis_triage,))) :- iota("A",A).
