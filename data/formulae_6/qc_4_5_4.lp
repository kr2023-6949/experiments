% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_triage'], 'B': ['iv_liquid'], 'C': ['er_registration'], 'D': ['release_a']})
domain("A",er_triage).
domain("A",release_a).
domain("A",leucocytes).
domain("A",iv_liquid).
domain("A",admission_nc).
domain("B",iv_liquid).
domain("B",admission_ic).
domain("B",release_b).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("C",er_registration).
domain("C",leucocytes).
domain("C",lacticacid).
domain("C",release_e).
domain("C",crp).
domain("D",release_a).
domain("D",release_e).
domain("D",release_b).
domain("D",return_er).
domain("D",er_triage).
root((and,(choice,(A,release_a,)),(and,(notchainresponse,(B,return_er,)),(and,(notchainresponse,(C,return_er,)),(choice,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
