% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['return_er'], 'B': ['lacticacid']})
domain("A",return_er).
domain("A",crp).
domain("A",er_registration).
domain("B",lacticacid).
domain("B",release_c).
domain("B",iv_liquid).
root((and,(respondedexistence,(A,er_triage,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
