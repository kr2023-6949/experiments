% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['admission_nc']})
domain("A",admission_nc).
domain("A",release_b).
domain("A",release_c).
domain("A",admission_ic).
domain("A",er_registration).
domain("A",leucocytes).
root((notchainprecedence,(A,return_er,))) :- iota("A",A).
