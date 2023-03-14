% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",release_b).
domain("A",er_sepsis_triage).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",release_d).
domain("C",iv_antibiotics).
domain("C",admission_nc).
domain("C",er_sepsis_triage).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,admission_nc,)),(notchainprecedence,(C,return_er,))))) :- iota("B",B),iota("A",A),iota("C",C).
