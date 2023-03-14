% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",lacticacid).
domain("A",return_er).
domain("A",release_c).
domain("A",crp).
root((choice,(A,er_triage,))) :- iota("A",A).
