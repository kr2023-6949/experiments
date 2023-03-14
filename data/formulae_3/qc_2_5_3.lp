% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['iv_liquid']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",crp).
domain("A",er_sepsis_triage).
domain("A",iv_antibiotics).
domain("B",iv_liquid).
domain("B",er_triage).
domain("B",er_registration).
domain("B",leucocytes).
domain("B",release_b).
root((and,(notprecedence,(A,iv_antibiotics,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
