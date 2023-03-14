% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",er_triage).
domain("A",lacticacid).
domain("A",admission_nc).
domain("A",crp).
domain("A",admission_ic).
root((notchainprecedence,(A,er_registration,))) :- iota("A",A).
