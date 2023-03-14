% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['release_a']})
domain("A",release_a).
domain("A",release_c).
domain("A",er_triage).
domain("A",return_er).
domain("A",admission_nc).
root((notchainprecedence,(A,iv_antibiotics,))) :- iota("A",A).
