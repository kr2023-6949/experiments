% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['admission_nc'], 'B': ['lacticacid']})
domain("A",admission_nc).
domain("A",release_d).
domain("A",er_registration).
domain("A",release_e).
domain("B",lacticacid).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("B",return_er).
root((and,(precedence,(A,return_er,)),(respondedexistence,(B,er_triage,)))) :- iota("B",B),iota("A",A).
