% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_sepsis_triage'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("B",er_registration).
domain("B",iv_liquid).
domain("C",er_sepsis_triage).
domain("C",release_c).
domain("D",er_registration).
domain("D",er_triage).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,admission_nc,)),(and,(choice,(C,lacticacid,)),(choice,(D,leucocytes,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
