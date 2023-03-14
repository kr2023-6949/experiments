% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['iv_antibiotics'], 'B': ['leucocytes'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",return_er).
domain("A",release_a).
domain("A",release_b).
domain("A",er_triage).
domain("B",leucocytes).
domain("B",crp).
domain("B",admission_nc).
domain("B",return_er).
domain("B",admission_ic).
domain("C",return_er).
domain("C",crp).
domain("C",lacticacid).
domain("C",leucocytes).
domain("C",er_triage).
domain("D",iv_antibiotics).
domain("D",leucocytes).
domain("D",return_er).
domain("D",admission_nc).
domain("D",release_e).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,lacticacid,)),(choice,(D,er_registration,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
