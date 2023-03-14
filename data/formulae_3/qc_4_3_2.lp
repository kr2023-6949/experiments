% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['leucocytes'], 'B': ['er_registration'], 'C': ['iv_antibiotics'], 'D': ['admission_nc']})
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",release_b).
domain("B",er_registration).
domain("B",er_triage).
domain("B",release_d).
domain("C",iv_antibiotics).
domain("C",admission_ic).
domain("C",release_a).
domain("D",admission_nc).
domain("D",release_d).
domain("D",iv_liquid).
root((and,(choice,(A,er_registration,)),(and,(precedence,(B,return_er,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
