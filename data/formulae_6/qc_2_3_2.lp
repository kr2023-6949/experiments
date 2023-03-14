% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['er_triage']})
domain("A",er_sepsis_triage).
domain("A",crp).
domain("A",release_a).
domain("B",er_triage).
domain("B",lacticacid).
domain("B",er_registration).
root((and,(respondedexistence,(A,er_registration,)),(choice,(B,admission_nc,)))) :- iota("B",B),iota("A",A).
