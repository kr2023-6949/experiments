% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['leucocytes']})
domain("A",return_er).
domain("A",release_c).
domain("A",release_a).
domain("A",release_d).
domain("A",lacticacid).
domain("B",leucocytes).
domain("B",lacticacid).
domain("B",er_sepsis_triage).
domain("B",iv_liquid).
domain("B",release_d).
root((and,(notprecedence,(A,iv_liquid,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
