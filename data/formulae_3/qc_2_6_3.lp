% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['iv_liquid']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",release_a).
domain("A",release_c).
domain("A",release_d).
domain("A",release_e).
domain("B",iv_liquid).
domain("B",release_d).
domain("B",release_e).
domain("B",admission_ic).
domain("B",release_b).
domain("B",return_er).
root((and,(notprecedence,(A,iv_antibiotics,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
