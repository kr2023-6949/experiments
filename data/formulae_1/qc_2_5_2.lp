% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['er_triage']})
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",release_b).
domain("A",release_d).
domain("A",release_e).
domain("B",er_triage).
domain("B",release_b).
domain("B",release_e).
domain("B",iv_antibiotics).
domain("B",release_c).
root((and,(notchainprecedence,(A,lacticacid,)),(precedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
