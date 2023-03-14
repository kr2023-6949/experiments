% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_sepsis_triage'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",release_b).
domain("A",er_triage).
domain("A",release_d).
domain("A",leucocytes).
domain("A",iv_liquid).
domain("B",er_registration).
domain("B",return_er).
domain("B",admission_nc).
domain("B",release_c).
domain("B",release_d).
domain("B",leucocytes).
domain("C",er_sepsis_triage).
domain("C",iv_antibiotics).
domain("C",er_triage).
domain("C",return_er).
domain("C",release_b).
domain("C",release_a).
domain("D",er_registration).
domain("D",release_e).
domain("D",return_er).
domain("D",admission_nc).
domain("D",lacticacid).
domain("D",crp).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,admission_nc,)),(and,(choice,(C,lacticacid,)),(choice,(D,leucocytes,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
