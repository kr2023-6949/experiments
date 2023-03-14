% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_triage'], 'B': ['iv_antibiotics']})
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",iv_liquid).
domain("A",return_er).
domain("A",admission_ic).
domain("B",iv_antibiotics).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",return_er).
domain("B",iv_liquid).
domain("B",admission_ic).
root((and,(notchainprecedence,(A,return_er,)),(respondedexistence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
