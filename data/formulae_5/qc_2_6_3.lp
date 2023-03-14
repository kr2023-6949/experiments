% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",leucocytes).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",iv_antibiotics).
domain("A",release_b).
domain("B",return_er).
domain("B",release_c).
domain("B",release_a).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",release_b).
root((and,(notprecedence,(A,admission_nc,)),(choice,(B,er_registration,)))) :- iota("B",B),iota("A",A).
