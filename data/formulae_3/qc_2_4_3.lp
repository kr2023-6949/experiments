% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['iv_liquid']})
domain("A",return_er).
domain("A",release_a).
domain("A",crp).
domain("A",leucocytes).
domain("B",iv_liquid).
domain("B",leucocytes).
domain("B",release_a).
domain("B",release_e).
root((and,(notprecedence,(A,iv_antibiotics,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
