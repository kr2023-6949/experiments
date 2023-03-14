% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['iv_antibiotics'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['release_a']})
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",er_triage).
domain("A",release_b).
domain("A",iv_liquid).
domain("A",return_er).
domain("B",er_registration).
domain("B",er_sepsis_triage).
domain("B",leucocytes).
domain("B",crp).
domain("B",admission_ic).
domain("B",release_b).
domain("C",er_sepsis_triage).
domain("C",leucocytes).
domain("C",release_b).
domain("C",iv_liquid).
domain("C",crp).
domain("C",return_er).
domain("D",release_a).
domain("D",iv_antibiotics).
domain("D",admission_nc).
domain("D",er_registration).
domain("D",iv_liquid).
domain("D",er_sepsis_triage).
root((and,(respondedexistence,(A,er_triage,)),(and,(precedence,(B,release_a,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
