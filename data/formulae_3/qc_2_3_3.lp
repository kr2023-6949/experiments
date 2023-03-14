% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['iv_liquid']})
domain("A",return_er).
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("B",iv_liquid).
domain("B",release_d).
domain("B",release_b).
root((and,(notprecedence,(A,iv_antibiotics,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
