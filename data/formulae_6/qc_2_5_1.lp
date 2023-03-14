% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['admission_nc'], 'B': ['lacticacid']})
domain("A",admission_nc).
domain("A",release_b).
domain("A",iv_liquid).
domain("A",admission_ic).
domain("A",er_sepsis_triage).
domain("B",lacticacid).
domain("B",leucocytes).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",iv_liquid).
root((and,(precedence,(A,return_er,)),(respondedexistence,(B,er_triage,)))) :- iota("B",B),iota("A",A).
