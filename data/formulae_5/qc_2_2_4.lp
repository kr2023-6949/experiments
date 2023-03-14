% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",crp).
domain("B",return_er).
domain("B",er_sepsis_triage).
root((and,(notprecedence,(A,admission_nc,)),(notresponse,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
