% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['return_er'], 'B': ['er_registration']})
domain("A",return_er).
domain("A",er_registration).
domain("A",release_e).
domain("A",crp).
domain("A",admission_ic).
domain("A",release_a).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",lacticacid).
domain("B",release_c).
domain("B",return_er).
domain("B",er_sepsis_triage).
root((and,(notprecedence,(A,er_sepsis_triage,)),(notchainprecedence,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
