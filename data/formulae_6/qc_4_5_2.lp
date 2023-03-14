% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['lacticacid'], 'C': ['er_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",release_e).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",admission_nc).
domain("B",lacticacid).
domain("B",release_b).
domain("B",admission_ic).
domain("B",iv_antibiotics).
domain("B",er_registration).
domain("C",er_triage).
domain("C",lacticacid).
domain("C",er_registration).
domain("C",release_e).
domain("C",iv_antibiotics).
domain("D",er_registration).
domain("D",leucocytes).
domain("D",release_a).
domain("D",iv_antibiotics).
domain("D",admission_ic).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(and,(notchainprecedence,(C,release_a,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
