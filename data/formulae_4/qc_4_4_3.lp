% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['iv_antibiotics'], 'B': ['leucocytes'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",release_d).
domain("A",release_b).
domain("B",leucocytes).
domain("B",return_er).
domain("B",release_d).
domain("B",er_sepsis_triage).
domain("C",return_er).
domain("C",leucocytes).
domain("C",release_d).
domain("C",er_triage).
domain("D",iv_antibiotics).
domain("D",return_er).
domain("D",release_b).
domain("D",er_triage).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,lacticacid,)),(choice,(D,er_registration,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
