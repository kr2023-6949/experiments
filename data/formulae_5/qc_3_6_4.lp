% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",release_a).
domain("A",er_registration).
domain("A",crp).
domain("A",release_b).
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",er_triage).
domain("B",er_sepsis_triage).
domain("B",iv_liquid).
domain("C",er_registration).
domain("C",release_c).
domain("C",lacticacid).
domain("C",er_triage).
domain("C",crp).
domain("C",release_e).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,er_triage,)),(notchainprecedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
