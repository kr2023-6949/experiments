% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",iv_liquid).
domain("B",lacticacid).
domain("C",iv_antibiotics).
domain("C",release_b).
domain("C",release_c).
domain("C",admission_ic).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,admission_nc,)),(notchainprecedence,(C,return_er,))))) :- iota("B",B),iota("A",A),iota("C",C).
