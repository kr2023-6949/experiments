% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",lacticacid).
domain("A",admission_ic).
domain("B",er_triage).
domain("B",return_er).
domain("B",release_c).
domain("B",admission_nc).
root((and,(notchainresponse,(A,iv_antibiotics,)),(alternateprecedence,(B,return_er,)))) :- iota("A",A),iota("B",B).
