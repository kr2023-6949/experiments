% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['lacticacid'], 'C': ['er_triage'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",lacticacid).
domain("A",leucocytes).
domain("B",lacticacid).
domain("B",iv_liquid).
domain("B",release_a).
domain("C",er_triage).
domain("C",admission_ic).
domain("C",release_e).
domain("D",er_registration).
domain("D",release_d).
domain("D",release_c).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(and,(notchainprecedence,(C,release_a,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
