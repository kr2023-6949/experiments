% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",release_b).
domain("A",leucocytes).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("A",release_e).
root((notchainprecedence,(A,release_a,))) :- iota("A",A).
