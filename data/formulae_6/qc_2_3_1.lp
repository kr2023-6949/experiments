% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['admission_nc'], 'B': ['lacticacid']})
domain("A",admission_nc).
domain("A",er_triage).
domain("A",iv_liquid).
domain("B",lacticacid).
domain("B",release_c).
domain("B",release_e).
root((and,(precedence,(A,return_er,)),(respondedexistence,(B,er_triage,)))) :- iota("B",B),iota("A",A).
