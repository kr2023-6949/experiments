% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_registration'], 'B': ['release_a']})
domain("A",er_registration).
domain("A",release_b).
domain("A",er_triage).
domain("A",crp).
domain("A",admission_ic).
domain("A",release_c).
domain("B",release_a).
domain("B",leucocytes).
domain("B",return_er).
domain("B",iv_antibiotics).
domain("B",release_e).
domain("B",er_registration).
root((and,(notchainprecedence,(A,admission_nc,)),(notprecedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
