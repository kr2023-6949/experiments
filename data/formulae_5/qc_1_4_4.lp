% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['admission_nc']})
domain("A",admission_nc).
domain("A",release_d).
domain("A",return_er).
domain("A",lacticacid).
root((notchainprecedence,(A,return_er,))) :- iota("A",A).
