% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",crp).
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
root((notchainprecedence,(A,leucocytes,))) :- iota("A",A).
