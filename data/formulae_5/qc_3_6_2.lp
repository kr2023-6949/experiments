% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['iv_liquid'], 'C': ['iv_liquid']})
domain("A",return_er).
domain("A",er_registration).
domain("A",release_d).
domain("A",release_b).
domain("A",iv_liquid).
domain("A",release_e).
domain("B",iv_liquid).
domain("B",er_sepsis_triage).
domain("B",er_registration).
domain("B",lacticacid).
domain("B",release_d).
domain("B",iv_antibiotics).
domain("C",iv_liquid).
domain("C",admission_nc).
domain("C",release_a).
domain("C",return_er).
domain("C",er_registration).
domain("C",admission_ic).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
