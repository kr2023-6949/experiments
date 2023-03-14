% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['lacticacid'], 'B': ['leucocytes'], 'C': ['iv_antibiotics']})
domain("A",lacticacid).
domain("A",admission_nc).
domain("B",leucocytes).
domain("B",return_er).
domain("C",iv_antibiotics).
domain("C",er_registration).
root((and,(choice,(A,er_triage,)),(and,(choice,(B,er_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
