% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("A",return_er).
domain("A",release_c).
domain("A",iv_liquid).
domain("A",er_triage).
domain("B",return_er).
domain("B",iv_antibiotics).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",release_c).
domain("B",er_sepsis_triage).
domain("C",return_er).
domain("C",release_d).
domain("C",er_registration).
domain("C",er_sepsis_triage).
domain("C",release_c).
domain("C",iv_liquid).
root((and,(respondedexistence,(A,er_registration,)),(and,(notchainresponse,(B,iv_liquid,)),(notchainprecedence,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
