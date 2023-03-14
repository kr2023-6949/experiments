% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",return_er).
domain("A",crp).
domain("A",admission_nc).
domain("A",er_triage).
domain("B",er_triage).
domain("B",release_e).
domain("B",release_c).
domain("B",release_d).
domain("B",er_registration).
root((and,(notchainresponse,(A,iv_antibiotics,)),(alternateprecedence,(B,return_er,)))) :- iota("A",A),iota("B",B).
