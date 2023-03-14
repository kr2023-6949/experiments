% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",admission_ic).
domain("A",leucocytes).
root((choice,(A,er_triage,))) :- iota("A",A).
