% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['er_triage']})
domain("A",release_a).
domain("A",release_c).
domain("A",release_d).
domain("B",er_triage).
domain("B",return_er).
domain("B",release_c).
root((and,(notchainprecedence,(A,lacticacid,)),(precedence,(B,admission_nc,)))) :- iota("A",A),iota("B",B).
