% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['return_er'], 'B': ['lacticacid']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",lacticacid).
domain("A",crp).
domain("A",release_a).
domain("A",release_e).
domain("B",lacticacid).
domain("B",release_a).
domain("B",return_er).
domain("B",leucocytes).
domain("B",crp).
domain("B",er_registration).
root((and,(respondedexistence,(A,er_triage,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
