% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",release_b).
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",lacticacid).
root((notprecedence,(A,er_sepsis_triage,))) :- iota("A",A).
