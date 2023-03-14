% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['return_er'], 'B': ['release_a'], 'C': ['er_registration']})
domain("A",return_er).
domain("A",er_triage).
domain("A",admission_ic).
domain("A",er_sepsis_triage).
domain("B",release_a).
domain("B",leucocytes).
domain("B",return_er).
domain("B",er_registration).
domain("C",er_registration).
domain("C",er_triage).
domain("C",crp).
domain("C",release_a).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notprecedence,(B,er_sepsis_triage,)),(precedence,(C,admission_nc,))))) :- iota("A",A),iota("B",B),iota("C",C).
