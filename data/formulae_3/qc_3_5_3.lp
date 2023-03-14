% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",iv_antibiotics).
domain("A",release_d).
domain("A",iv_liquid).
domain("A",release_e).
domain("B",er_triage).
domain("B",er_registration).
domain("B",admission_nc).
domain("B",release_c).
domain("B",release_d).
domain("C",iv_antibiotics).
domain("C",release_c).
domain("C",er_registration).
domain("C",crp).
domain("C",admission_nc).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,admission_nc,)),(notchainprecedence,(C,return_er,))))) :- iota("B",B),iota("A",A),iota("C",C).
