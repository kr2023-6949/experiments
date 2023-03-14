% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_triage'], 'B': ['er_registration']})
domain("A",er_triage).
domain("A",admission_ic).
domain("A",release_d).
domain("A",lacticacid).
domain("A",admission_nc).
domain("A",release_e).
domain("B",er_registration).
domain("B",crp).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
domain("B",er_sepsis_triage).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("A",A),iota("B",B).
