% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['iv_liquid']})
domain("A",return_er).
domain("A",admission_ic).
domain("B",iv_liquid).
domain("B",er_sepsis_triage).
root((and,(notprecedence,(A,iv_antibiotics,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
