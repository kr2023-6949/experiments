% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",er_triage).
domain("A",lacticacid).
domain("A",er_sepsis_triage).
root((notchainprecedence,(A,er_sepsis_triage,))) :- iota("A",A).
