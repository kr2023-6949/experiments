% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['leucocytes'], 'B': ['er_registration'], 'C': ['iv_antibiotics'], 'D': ['admission_nc']})
domain("A",leucocytes).
domain("A",er_sepsis_triage).
domain("A",release_a).
domain("A",iv_antibiotics).
domain("B",er_registration).
domain("B",iv_liquid).
domain("B",lacticacid).
domain("B",er_sepsis_triage).
domain("C",iv_antibiotics).
domain("C",lacticacid).
domain("C",release_d).
domain("C",return_er).
domain("D",admission_nc).
domain("D",release_a).
domain("D",leucocytes).
domain("D",er_sepsis_triage).
root((and,(choice,(A,er_registration,)),(and,(precedence,(B,return_er,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
