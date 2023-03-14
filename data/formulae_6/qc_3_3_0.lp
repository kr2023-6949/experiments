% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['lacticacid'], 'B': ['leucocytes'], 'C': ['iv_antibiotics']})
domain("A",lacticacid).
domain("A",return_er).
domain("A",er_triage).
domain("B",leucocytes).
domain("B",release_e).
domain("B",release_a).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
domain("C",er_triage).
root((and,(choice,(A,er_triage,)),(and,(choice,(B,er_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
