% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['leucocytes']})
domain("A",return_er).
domain("A",crp).
domain("A",release_d).
domain("A",release_a).
domain("B",leucocytes).
domain("B",release_c).
domain("B",er_triage).
domain("B",release_a).
root((and,(notprecedence,(A,iv_liquid,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
