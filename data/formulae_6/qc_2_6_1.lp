% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['admission_nc'], 'B': ['lacticacid']})
domain("A",admission_nc).
domain("A",iv_antibiotics).
domain("A",lacticacid).
domain("A",admission_ic).
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("B",lacticacid).
domain("B",release_b).
domain("B",iv_antibiotics).
domain("B",er_triage).
domain("B",return_er).
domain("B",crp).
root((and,(precedence,(A,return_er,)),(respondedexistence,(B,er_triage,)))) :- iota("B",B),iota("A",A).
