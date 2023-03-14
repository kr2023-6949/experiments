% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_triage'], 'B': ['iv_antibiotics']})
domain("A",er_triage).
domain("A",return_er).
domain("A",release_e).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("B",admission_ic).
root((and,(notchainprecedence,(A,return_er,)),(respondedexistence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
