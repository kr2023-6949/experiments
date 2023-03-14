% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['iv_antibiotics'], 'B': ['leucocytes'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",release_b).
domain("A",release_e).
domain("A",admission_nc).
domain("A",crp).
domain("B",leucocytes).
domain("B",iv_liquid).
domain("B",release_b).
domain("B",er_sepsis_triage).
domain("B",release_d).
domain("B",release_e).
domain("C",return_er).
domain("C",iv_antibiotics).
domain("C",admission_ic).
domain("C",release_b).
domain("C",release_d).
domain("C",release_c).
domain("D",iv_antibiotics).
domain("D",release_a).
domain("D",er_registration).
domain("D",release_d).
domain("D",admission_nc).
domain("D",leucocytes).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,lacticacid,)),(choice,(D,er_registration,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
