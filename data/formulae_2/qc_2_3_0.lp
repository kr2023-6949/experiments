% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",release_e).
domain("A",crp).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",iv_antibiotics).
root((and,(notchainresponse,(A,iv_antibiotics,)),(alternateprecedence,(B,return_er,)))) :- iota("A",A),iota("B",B).
