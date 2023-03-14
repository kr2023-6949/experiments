% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['crp'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['admission_nc']})
domain("A",crp).
domain("A",admission_ic).
domain("A",release_a).
domain("A",release_b).
domain("A",iv_antibiotics).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",er_registration).
domain("B",release_b).
domain("B",crp).
domain("B",release_d).
domain("B",release_e).
domain("C",return_er).
domain("C",lacticacid).
domain("C",iv_antibiotics).
domain("C",crp).
domain("C",release_a).
domain("C",release_c).
domain("D",admission_nc).
domain("D",er_triage).
domain("D",release_d).
domain("D",lacticacid).
domain("D",release_e).
domain("D",er_registration).
root((and,(choice,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(and,(choice,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
