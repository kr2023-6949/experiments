% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['admission_nc']})
domain("A",admission_nc).
domain("A",release_e).
domain("A",release_b).
domain("A",iv_liquid).
root((choice,(A,er_sepsis_triage,))) :- iota("A",A).
