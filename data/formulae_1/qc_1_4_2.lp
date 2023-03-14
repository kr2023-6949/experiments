% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",release_c).
root((choice,(A,iv_liquid,))) :- iota("A",A).
