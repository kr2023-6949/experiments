% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",release_e).
domain("B",er_triage).
domain("B",iv_liquid).
root((and,(existence1,(A,)),(respondedexistence,(B,er_registration,)))) :- iota("B",B),iota("A",A).
