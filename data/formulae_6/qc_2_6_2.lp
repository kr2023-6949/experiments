% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['er_triage']})
domain("A",er_sepsis_triage).
domain("A",crp).
domain("A",admission_ic).
domain("A",lacticacid).
domain("A",release_b).
domain("A",return_er).
domain("B",er_triage).
domain("B",return_er).
domain("B",crp).
domain("B",release_d).
domain("B",leucocytes).
domain("B",iv_liquid).
root((and,(respondedexistence,(A,er_registration,)),(choice,(B,admission_nc,)))) :- iota("B",B),iota("A",A).
