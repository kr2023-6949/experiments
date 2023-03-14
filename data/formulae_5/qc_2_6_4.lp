% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",release_d).
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("A",admission_nc).
domain("B",return_er).
domain("B",release_b).
domain("B",iv_liquid).
domain("B",admission_nc).
domain("B",crp).
domain("B",release_c).
root((and,(notprecedence,(A,admission_nc,)),(notresponse,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
