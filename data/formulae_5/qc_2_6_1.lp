% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['leucocytes']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",release_c).
domain("A",er_sepsis_triage).
domain("A",release_a).
domain("A",release_d).
domain("B",leucocytes).
domain("B",return_er).
domain("B",iv_liquid).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",release_e).
root((and,(notprecedence,(A,iv_liquid,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
