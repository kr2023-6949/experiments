% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['lacticacid'], 'B': ['leucocytes'], 'C': ['iv_antibiotics']})
domain("A",lacticacid).
domain("A",admission_nc).
domain("A",iv_antibiotics).
domain("A",release_c).
domain("A",er_sepsis_triage).
domain("A",crp).
domain("B",leucocytes).
domain("B",return_er).
domain("B",release_a).
domain("B",admission_nc).
domain("B",er_registration).
domain("B",admission_ic).
domain("C",iv_antibiotics).
domain("C",admission_nc).
domain("C",return_er).
domain("C",er_registration).
domain("C",er_sepsis_triage).
domain("C",release_c).
root((and,(choice,(A,er_triage,)),(and,(choice,(B,er_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
