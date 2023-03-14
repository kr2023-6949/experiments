% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['iv_liquid'], 'C': ['iv_liquid']})
domain("A",return_er).
domain("A",er_registration).
domain("A",release_a).
domain("A",crp).
domain("A",admission_ic).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",return_er).
domain("B",er_registration).
domain("B",iv_antibiotics).
domain("C",iv_liquid).
domain("C",release_b).
domain("C",admission_ic).
domain("C",er_registration).
domain("C",release_c).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
