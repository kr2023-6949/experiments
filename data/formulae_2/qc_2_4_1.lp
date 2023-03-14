% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_triage'], 'B': ['er_registration']})
domain("A",er_triage).
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("B",er_registration).
domain("B",lacticacid).
domain("B",admission_ic).
domain("B",release_a).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("A",A),iota("B",B).
