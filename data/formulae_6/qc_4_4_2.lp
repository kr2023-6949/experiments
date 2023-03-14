% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['lacticacid'], 'C': ['er_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",return_er).
domain("A",admission_nc).
domain("A",er_registration).
domain("B",lacticacid).
domain("B",release_e).
domain("B",leucocytes).
domain("B",release_c).
domain("C",er_triage).
domain("C",release_b).
domain("C",er_registration).
domain("C",iv_antibiotics).
domain("D",er_registration).
domain("D",release_e).
domain("D",release_c).
domain("D",er_sepsis_triage).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(and,(notchainprecedence,(C,release_a,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
