% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",release_b).
domain("A",release_e).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",crp).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("B",er_sepsis_triage).
domain("C",return_er).
domain("C",admission_nc).
domain("C",release_b).
domain("C",release_d).
domain("C",er_triage).
root((and,(respondedexistence,(A,er_registration,)),(and,(notchainresponse,(B,iv_liquid,)),(notchainprecedence,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
