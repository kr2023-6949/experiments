% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['release_a']})
domain("A",release_a).
domain("A",er_triage).
domain("A",admission_ic).
domain("A",release_d).
domain("A",crp).
domain("B",return_er).
domain("B",leucocytes).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",crp).
domain("C",lacticacid).
domain("C",release_e).
domain("C",release_d).
domain("C",release_b).
domain("C",crp).
domain("D",release_a).
domain("D",er_sepsis_triage).
domain("D",er_triage).
domain("D",crp).
domain("D",leucocytes).
root((and,(notchainresponse,(A,er_registration,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_registration,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
