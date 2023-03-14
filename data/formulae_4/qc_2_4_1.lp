% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['return_er'], 'B': ['lacticacid']})
domain("A",return_er).
domain("A",crp).
domain("A",er_registration).
domain("A",iv_liquid).
domain("B",lacticacid).
domain("B",release_d).
domain("B",return_er).
domain("B",release_b).
root((and,(respondedexistence,(A,er_triage,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
