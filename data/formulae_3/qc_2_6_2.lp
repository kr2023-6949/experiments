% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",admission_nc).
domain("A",crp).
domain("A",release_a).
domain("A",lacticacid).
domain("A",iv_liquid).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",release_c).
domain("B",iv_liquid).
domain("B",release_b).
domain("B",admission_ic).
root((and,(existence1,(A,)),(respondedexistence,(B,er_registration,)))) :- iota("B",B),iota("A",A).
