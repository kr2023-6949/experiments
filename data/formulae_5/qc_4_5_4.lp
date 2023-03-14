% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['iv_antibiotics'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['release_a']})
domain("A",iv_antibiotics).
domain("A",release_b).
domain("A",release_c).
domain("A",leucocytes).
domain("A",release_e).
domain("B",er_registration).
domain("B",release_d).
domain("B",admission_ic).
domain("B",release_e).
domain("B",iv_antibiotics).
domain("C",er_sepsis_triage).
domain("C",lacticacid).
domain("C",er_registration).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("D",release_a).
domain("D",er_registration).
domain("D",return_er).
domain("D",release_b).
domain("D",release_d).
root((and,(respondedexistence,(A,er_triage,)),(and,(precedence,(B,release_a,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
