% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",release_a).
domain("A",er_triage).
domain("A",release_c).
domain("A",lacticacid).
domain("A",iv_antibiotics).
domain("B",return_er).
domain("B",iv_antibiotics).
domain("B",crp).
domain("B",admission_nc).
domain("B",er_sepsis_triage).
domain("C",er_registration).
domain("C",leucocytes).
domain("C",admission_ic).
domain("C",er_triage).
domain("C",release_a).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,er_triage,)),(notchainprecedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
