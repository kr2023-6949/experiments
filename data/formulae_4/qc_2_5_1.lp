% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['return_er'], 'B': ['lacticacid']})
domain("A",return_er).
domain("A",release_d).
domain("A",admission_ic).
domain("A",lacticacid).
domain("A",admission_nc).
domain("B",lacticacid).
domain("B",release_b).
domain("B",admission_nc).
domain("B",release_c).
domain("B",iv_liquid).
root((and,(respondedexistence,(A,er_triage,)),(respondedexistence,(B,leucocytes,)))) :- iota("B",B),iota("A",A).
