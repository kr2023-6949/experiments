% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['crp'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['admission_nc']})
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",release_b).
domain("A",er_sepsis_triage).
domain("A",release_c).
domain("B",return_er).
domain("B",lacticacid).
domain("B",admission_ic).
domain("B",iv_liquid).
domain("B",crp).
domain("C",return_er).
domain("C",lacticacid).
domain("C",release_c).
domain("C",leucocytes).
domain("C",admission_nc).
domain("D",admission_nc).
domain("D",return_er).
domain("D",release_a).
domain("D",leucocytes).
domain("D",release_b).
root((and,(choice,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(and,(choice,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
