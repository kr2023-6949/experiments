% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",release_c).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",er_sepsis_triage).
domain("B",er_registration).
domain("B",release_a).
root((and,(notprecedence,(A,admission_nc,)),(notresponse,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
