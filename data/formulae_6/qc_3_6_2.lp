% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['crp'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",iv_liquid).
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",crp).
domain("A",er_sepsis_triage).
domain("B",crp).
domain("B",return_er).
domain("B",admission_nc).
domain("B",release_c).
domain("B",release_b).
domain("B",er_registration).
domain("C",iv_antibiotics).
domain("C",return_er).
domain("C",admission_ic).
domain("C",lacticacid).
domain("C",release_d).
domain("C",er_triage).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
