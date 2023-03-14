% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['iv_antibiotics'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['release_a']})
domain("A",iv_antibiotics).
domain("A",release_a).
domain("A",iv_liquid).
domain("A",crp).
domain("B",er_registration).
domain("B",release_c).
domain("B",release_e).
domain("B",release_d).
domain("C",er_sepsis_triage).
domain("C",crp).
domain("C",release_e).
domain("C",return_er).
domain("D",release_a).
domain("D",return_er).
domain("D",admission_nc).
domain("D",leucocytes).
root((and,(respondedexistence,(A,er_triage,)),(and,(precedence,(B,release_a,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
