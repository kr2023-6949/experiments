% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",leucocytes).
domain("A",lacticacid).
domain("A",release_a).
domain("B",er_triage).
domain("B",crp).
domain("B",iv_antibiotics).
domain("B",admission_nc).
root((and,(notchainresponse,(A,admission_nc,)),(existence1,(B,)))) :- iota("B",B),iota("A",A).
