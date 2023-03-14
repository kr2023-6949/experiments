% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",return_er).
domain("A",release_a).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("B",release_a).
root((and,(existence1,(A,)),(respondedexistence,(B,er_registration,)))) :- iota("B",B),iota("A",A).
