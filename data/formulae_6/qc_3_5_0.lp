% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['lacticacid'], 'B': ['leucocytes'], 'C': ['iv_antibiotics']})
domain("A",lacticacid).
domain("A",er_registration).
domain("A",release_b).
domain("A",crp).
domain("A",release_d).
domain("B",leucocytes).
domain("B",lacticacid).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("C",iv_antibiotics).
domain("C",er_registration).
domain("C",release_e).
domain("C",er_triage).
domain("C",leucocytes).
root((and,(choice,(A,er_triage,)),(and,(choice,(B,er_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
