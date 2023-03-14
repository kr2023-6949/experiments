% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_sepsis_triage'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",crp).
domain("A",admission_ic).
domain("B",er_registration).
domain("B",er_triage).
domain("B",leucocytes).
domain("C",er_sepsis_triage).
domain("C",release_b).
domain("C",iv_liquid).
domain("D",er_registration).
domain("D",admission_nc).
domain("D",leucocytes).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,admission_nc,)),(and,(choice,(C,lacticacid,)),(choice,(D,leucocytes,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
