% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['lacticacid']})
domain("A",lacticacid).
domain("A",release_c).
domain("A",leucocytes).
domain("A",crp).
domain("A",er_registration).
domain("A",release_d).
root((choice,(A,er_sepsis_triage,))) :- iota("A",A).
