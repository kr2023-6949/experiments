% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",release_e).
domain("A",release_b).
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",crp).
root((choice,(A,er_triage,))) :- iota("A",A).
