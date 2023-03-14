% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['iv_antibiotics'], 'B': ['leucocytes'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",leucocytes).
domain("B",leucocytes).
domain("B",crp).
domain("C",return_er).
domain("C",lacticacid).
domain("D",iv_antibiotics).
domain("D",return_er).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,lacticacid,)),(choice,(D,er_registration,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
