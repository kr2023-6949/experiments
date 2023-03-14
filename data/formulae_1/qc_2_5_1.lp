% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_registration'], 'B': ['release_a']})
domain("A",er_registration).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",release_e).
domain("A",er_triage).
domain("B",release_a).
domain("B",release_e).
domain("B",release_d).
domain("B",release_b).
domain("B",return_er).
root((and,(notchainprecedence,(A,admission_nc,)),(notprecedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
