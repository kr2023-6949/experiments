% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",release_a).
domain("A",release_b).
domain("A",admission_ic).
domain("A",iv_antibiotics).
domain("B",return_er).
domain("B",er_triage).
domain("B",release_d).
domain("B",iv_antibiotics).
domain("C",return_er).
domain("C",er_sepsis_triage).
domain("C",iv_antibiotics).
domain("C",admission_ic).
root((and,(respondedexistence,(A,er_registration,)),(and,(notchainresponse,(B,iv_liquid,)),(notchainprecedence,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
