% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",release_e).
domain("A",iv_liquid).
domain("A",return_er).
domain("A",release_c).
domain("B",er_triage).
domain("B",release_e).
domain("B",admission_nc).
domain("B",crp).
domain("B",return_er).
domain("B",release_a).
root((and,(notchainresponse,(A,admission_nc,)),(existence1,(B,)))) :- iota("B",B),iota("A",A).
