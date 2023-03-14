% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_sepsis_triage'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",release_c).
domain("A",iv_antibiotics).
domain("A",lacticacid).
domain("B",er_registration).
domain("B",er_triage).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("C",er_sepsis_triage).
domain("C",er_registration).
domain("C",return_er).
domain("C",lacticacid).
domain("D",er_registration).
domain("D",er_sepsis_triage).
domain("D",release_e).
domain("D",admission_nc).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,admission_nc,)),(and,(choice,(C,lacticacid,)),(choice,(D,leucocytes,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
