% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['iv_liquid'], 'C': ['iv_liquid']})
domain("A",return_er).
domain("A",release_e).
domain("A",release_d).
domain("A",release_a).
domain("B",iv_liquid).
domain("B",return_er).
domain("B",er_triage).
domain("B",er_sepsis_triage).
domain("C",iv_liquid).
domain("C",release_b).
domain("C",iv_antibiotics).
domain("C",er_triage).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
