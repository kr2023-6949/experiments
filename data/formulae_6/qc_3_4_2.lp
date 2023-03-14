% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['crp'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",leucocytes).
domain("A",er_registration).
domain("A",crp).
domain("B",crp).
domain("B",er_sepsis_triage).
domain("B",release_c).
domain("B",lacticacid).
domain("C",iv_antibiotics).
domain("C",er_registration).
domain("C",release_a).
domain("C",admission_ic).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
