% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_triage'], 'B': ['iv_antibiotics']})
domain("A",er_triage).
domain("A",release_a).
domain("A",iv_liquid).
domain("A",admission_nc).
domain("B",iv_antibiotics).
domain("B",er_sepsis_triage).
domain("B",leucocytes).
domain("B",return_er).
root((and,(notchainprecedence,(A,return_er,)),(respondedexistence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
