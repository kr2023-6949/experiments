% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['lacticacid'], 'C': ['er_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",release_d).
domain("A",release_c).
domain("A",release_a).
domain("A",iv_liquid).
domain("A",release_b).
domain("B",lacticacid).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",iv_antibiotics).
domain("B",er_sepsis_triage).
domain("B",return_er).
domain("C",er_triage).
domain("C",release_d).
domain("C",crp).
domain("C",lacticacid).
domain("C",iv_antibiotics).
domain("C",admission_nc).
domain("D",er_registration).
domain("D",er_sepsis_triage).
domain("D",release_e).
domain("D",iv_liquid).
domain("D",release_b).
domain("D",lacticacid).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(and,(notchainprecedence,(C,release_a,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
