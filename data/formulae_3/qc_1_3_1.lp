% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",er_triage).
domain("A",iv_antibiotics).
root((notchainprecedence,(A,iv_antibiotics,))) :- iota("A",A).
