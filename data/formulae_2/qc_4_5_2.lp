% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_sepsis_triage'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("A",release_e).
domain("A",return_er).
domain("A",admission_nc).
domain("B",er_registration).
domain("B",release_a).
domain("B",admission_nc).
domain("B",leucocytes).
domain("B",crp).
domain("C",er_sepsis_triage).
domain("C",release_d).
domain("C",leucocytes).
domain("C",admission_nc).
domain("C",release_b).
domain("D",er_registration).
domain("D",crp).
domain("D",lacticacid).
domain("D",release_e).
domain("D",release_b).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,admission_nc,)),(and,(choice,(C,lacticacid,)),(choice,(D,leucocytes,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
