% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",er_registration).
domain("A",release_d).
domain("A",release_b).
domain("A",admission_ic).
domain("B",er_triage).
domain("B",iv_liquid).
domain("B",leucocytes).
domain("B",admission_ic).
domain("B",release_a).
root((and,(notchainresponse,(A,admission_nc,)),(existence1,(B,)))) :- iota("B",B),iota("A",A).
