% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("A",lacticacid).
root((notchainresponse,(A,iv_liquid,))) :- iota("A",A).
