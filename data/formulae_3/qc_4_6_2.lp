% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['leucocytes'], 'B': ['er_registration'], 'C': ['iv_antibiotics'], 'D': ['admission_nc']})
domain("A",leucocytes).
domain("A",release_e).
domain("A",er_sepsis_triage).
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",iv_liquid).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",release_e).
domain("B",release_b).
domain("B",release_a).
domain("B",release_c).
domain("C",iv_antibiotics).
domain("C",lacticacid).
domain("C",admission_nc).
domain("C",release_d).
domain("C",er_sepsis_triage).
domain("C",crp).
domain("D",admission_nc).
domain("D",release_e).
domain("D",release_c).
domain("D",iv_liquid).
domain("D",release_a).
domain("D",er_triage).
root((and,(choice,(A,er_registration,)),(and,(precedence,(B,return_er,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
