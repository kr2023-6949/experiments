% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",admission_ic).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",er_sepsis_triage).
root((choice,(A,iv_antibiotics,))) :- iota("A",A).
