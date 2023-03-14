% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",admission_ic).
domain("B",er_triage).
domain("B",leucocytes).
domain("C",iv_antibiotics).
domain("C",release_d).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,admission_nc,)),(notchainprecedence,(C,return_er,))))) :- iota("B",B),iota("A",A),iota("C",C).
