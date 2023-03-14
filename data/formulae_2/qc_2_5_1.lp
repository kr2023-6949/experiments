% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_triage'], 'B': ['er_registration']})
domain("A",er_triage).
domain("A",leucocytes).
domain("A",iv_liquid).
domain("A",admission_ic).
domain("A",release_e).
domain("B",er_registration).
domain("B",er_triage).
domain("B",return_er).
domain("B",crp).
domain("B",release_c).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("A",A),iota("B",B).
