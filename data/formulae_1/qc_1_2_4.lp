% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",iv_antibiotics).
root((notprecedence,(A,er_sepsis_triage,))) :- iota("A",A).
