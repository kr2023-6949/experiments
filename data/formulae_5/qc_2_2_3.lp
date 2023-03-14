% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",release_a).
domain("B",return_er).
domain("B",release_a).
root((and,(notprecedence,(A,admission_nc,)),(choice,(B,er_registration,)))) :- iota("B",B),iota("A",A).
