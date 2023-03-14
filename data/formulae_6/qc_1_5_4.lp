% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",lacticacid).
domain("A",release_b).
domain("A",admission_nc).
domain("A",leucocytes).
root((notchainprecedence,(A,leucocytes,))) :- iota("A",A).
