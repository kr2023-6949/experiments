% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_triage'], 'B': ['iv_liquid'], 'C': ['er_registration'], 'D': ['release_a']})
domain("A",er_triage).
domain("A",crp).
domain("A",admission_nc).
domain("A",release_e).
domain("A",iv_liquid).
domain("A",iv_antibiotics).
domain("B",iv_liquid).
domain("B",release_e).
domain("B",admission_ic).
domain("B",iv_antibiotics).
domain("B",leucocytes).
domain("B",release_a).
domain("C",er_registration).
domain("C",leucocytes).
domain("C",admission_ic).
domain("C",release_d).
domain("C",admission_nc).
domain("C",crp).
domain("D",release_a).
domain("D",lacticacid).
domain("D",er_registration).
domain("D",release_b).
domain("D",admission_nc).
domain("D",leucocytes).
root((and,(choice,(A,release_a,)),(and,(notchainresponse,(B,return_er,)),(and,(notchainresponse,(C,return_er,)),(choice,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
