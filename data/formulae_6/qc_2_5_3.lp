% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['return_er'], 'B': ['er_registration']})
domain("A",return_er).
domain("A",leucocytes).
domain("A",release_c).
domain("A",iv_liquid).
domain("A",release_a).
domain("B",er_registration).
domain("B",release_a).
domain("B",release_e).
domain("B",admission_ic).
domain("B",release_c).
root((and,(notprecedence,(A,er_sepsis_triage,)),(notchainprecedence,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
