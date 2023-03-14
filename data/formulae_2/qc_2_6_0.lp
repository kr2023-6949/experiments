% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",release_d).
domain("A",admission_ic).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",admission_ic).
domain("B",release_a).
domain("B",er_registration).
domain("B",iv_liquid).
root((and,(notchainresponse,(A,iv_antibiotics,)),(alternateprecedence,(B,return_er,)))) :- iota("A",A),iota("B",B).
