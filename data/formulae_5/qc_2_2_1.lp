% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['leucocytes']})
domain("A",return_er).
domain("A",admission_nc).
domain("B",leucocytes).
domain("B",lacticacid).
root((and,(notprecedence,(A,iv_liquid,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
