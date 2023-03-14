% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",er_triage).
domain("A",admission_nc).
domain("A",release_a).
domain("A",admission_ic).
domain("A",release_c).
root((respondedexistence,(A,er_triage,))) :- iota("A",A).
