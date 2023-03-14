% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['lacticacid'], 'B': ['leucocytes'], 'C': ['iv_antibiotics']})
domain("A",lacticacid).
domain("A",iv_liquid).
domain("A",release_b).
domain("A",leucocytes).
domain("B",leucocytes).
domain("B",crp).
domain("B",er_registration).
domain("B",release_d).
domain("C",iv_antibiotics).
domain("C",er_triage).
domain("C",release_a).
domain("C",iv_liquid).
root((and,(choice,(A,er_triage,)),(and,(choice,(B,er_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
