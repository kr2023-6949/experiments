% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_registration'], 'B': ['release_a']})
domain("A",er_registration).
domain("A",release_b).
domain("B",release_a).
domain("B",er_sepsis_triage).
root((and,(notchainprecedence,(A,admission_nc,)),(notprecedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
