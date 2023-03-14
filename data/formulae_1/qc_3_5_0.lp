% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['return_er'], 'B': ['release_a'], 'C': ['er_registration']})
domain("A",return_er).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",release_a).
domain("A",release_c).
domain("B",release_a).
domain("B",er_triage).
domain("B",admission_ic).
domain("B",er_sepsis_triage).
domain("B",admission_nc).
domain("C",er_registration).
domain("C",release_c).
domain("C",release_b).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notprecedence,(B,er_sepsis_triage,)),(precedence,(C,admission_nc,))))) :- iota("A",A),iota("B",B),iota("C",C).
