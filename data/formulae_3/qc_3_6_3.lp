% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",release_d).
domain("A",er_triage).
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",release_c).
domain("B",er_triage).
domain("B",crp).
domain("B",release_b).
domain("B",release_e).
domain("B",iv_liquid).
domain("B",release_d).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
domain("C",return_er).
domain("C",admission_ic).
domain("C",admission_nc).
domain("C",lacticacid).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,admission_nc,)),(notchainprecedence,(C,return_er,))))) :- iota("B",B),iota("A",A),iota("C",C).
