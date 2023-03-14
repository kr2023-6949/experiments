% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",admission_ic).
domain("A",iv_liquid).
domain("A",release_e).
domain("A",er_registration).
domain("B",return_er).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("B",er_triage).
domain("B",release_b).
root((and,(notprecedence,(A,admission_nc,)),(notresponse,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
