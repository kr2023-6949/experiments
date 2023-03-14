% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_registration'], 'B': ['release_a']})
domain("A",er_registration).
domain("A",crp).
domain("A",release_d).
domain("A",iv_liquid).
domain("B",release_a).
domain("B",release_c).
domain("B",leucocytes).
domain("B",lacticacid).
root((and,(notchainprecedence,(A,admission_nc,)),(notprecedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
