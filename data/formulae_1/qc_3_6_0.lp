% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['return_er'], 'B': ['release_a'], 'C': ['er_registration']})
domain("A",return_er).
domain("A",iv_liquid).
domain("A",admission_ic).
domain("A",release_c).
domain("A",release_b).
domain("A",er_registration).
domain("B",release_a).
domain("B",er_registration).
domain("B",release_e).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",return_er).
domain("C",er_registration).
domain("C",release_b).
domain("C",er_sepsis_triage).
domain("C",iv_liquid).
domain("C",er_triage).
domain("C",lacticacid).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notprecedence,(B,er_sepsis_triage,)),(precedence,(C,admission_nc,))))) :- iota("A",A),iota("B",B),iota("C",C).
