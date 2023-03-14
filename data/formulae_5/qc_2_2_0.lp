% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",release_e).
root((and,(notchainresponse,(A,admission_nc,)),(existence1,(B,)))) :- iota("B",B),iota("A",A).
