% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['leucocytes'], 'B': ['er_registration'], 'C': ['iv_antibiotics'], 'D': ['admission_nc']})
domain("A",leucocytes).
domain("A",release_b).
domain("A",release_a).
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("B",er_registration).
domain("B",iv_antibiotics).
domain("B",release_e).
domain("B",er_sepsis_triage).
domain("B",leucocytes).
domain("C",iv_antibiotics).
domain("C",release_b).
domain("C",admission_ic).
domain("C",release_d).
domain("C",return_er).
domain("D",admission_nc).
domain("D",er_registration).
domain("D",release_c).
domain("D",er_sepsis_triage).
domain("D",leucocytes).
root((and,(choice,(A,er_registration,)),(and,(precedence,(B,return_er,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
