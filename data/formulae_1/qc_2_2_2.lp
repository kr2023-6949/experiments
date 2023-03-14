% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['er_triage']})
domain("A",release_a).
domain("A",crp).
domain("B",er_triage).
domain("B",er_sepsis_triage).
root((and,(notchainprecedence,(A,lacticacid,)),(precedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
