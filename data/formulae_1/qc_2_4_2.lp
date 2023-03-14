% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['er_triage']})
domain("A",release_a).
domain("A",release_c).
domain("A",admission_ic).
domain("A",release_b).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",admission_nc).
domain("B",release_d).
root((and,(notchainprecedence,(A,lacticacid,)),(precedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
