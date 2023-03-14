% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",lacticacid).
domain("A",er_registration).
domain("A",release_c).
domain("B",er_triage).
domain("B",return_er).
domain("B",leucocytes).
domain("B",release_c).
domain("B",iv_antibiotics).
root((and,(existence1,(A,)),(respondedexistence,(B,er_registration,)))) :- iota("B",B),iota("A",A).
