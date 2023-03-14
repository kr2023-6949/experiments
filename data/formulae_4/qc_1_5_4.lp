% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['admission_nc']})
domain("A",admission_nc).
domain("A",er_sepsis_triage).
domain("A",release_e).
domain("A",release_d).
domain("A",er_triage).
root((choice,(A,er_sepsis_triage,))) :- iota("A",A).
