% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",release_b).
domain("A",admission_nc).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",release_d).
root((choice,(A,iv_liquid,))) :- iota("A",A).
