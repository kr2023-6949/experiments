% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['crp'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",lacticacid).
domain("A",release_c).
domain("A",release_d).
domain("A",iv_antibiotics).
domain("B",crp).
domain("B",iv_antibiotics).
domain("B",admission_ic).
domain("B",admission_nc).
domain("B",return_er).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",crp).
domain("C",return_er).
domain("C",er_registration).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
