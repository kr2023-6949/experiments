% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['iv_antibiotics'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['release_a']})
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",release_b).
domain("B",er_registration).
domain("B",leucocytes).
domain("B",return_er).
domain("C",er_sepsis_triage).
domain("C",er_registration).
domain("C",release_e).
domain("D",release_a).
domain("D",er_sepsis_triage).
domain("D",release_c).
root((and,(respondedexistence,(A,er_triage,)),(and,(precedence,(B,release_a,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
