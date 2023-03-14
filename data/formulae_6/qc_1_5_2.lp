% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",er_registration).
domain("A",lacticacid).
domain("A",leucocytes).
domain("A",iv_antibiotics).
root((notchainprecedence,(A,er_registration,))) :- iota("A",A).
