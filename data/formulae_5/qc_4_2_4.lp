% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['iv_antibiotics'], 'B': ['er_registration'], 'C': ['er_sepsis_triage'], 'D': ['release_a']})
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("B",er_registration).
domain("B",er_triage).
domain("C",er_sepsis_triage).
domain("C",er_triage).
domain("D",release_a).
domain("D",release_d).
root((and,(respondedexistence,(A,er_triage,)),(and,(precedence,(B,release_a,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
