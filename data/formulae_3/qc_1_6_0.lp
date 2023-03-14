% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['release_a']})
domain("A",release_a).
domain("A",admission_ic).
domain("A",er_registration).
domain("A",crp).
domain("A",lacticacid).
domain("A",iv_liquid).
root((notchainprecedence,(A,iv_antibiotics,))) :- iota("A",A).
