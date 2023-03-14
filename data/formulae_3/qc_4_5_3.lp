% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",release_b).
domain("A",release_a).
domain("A",release_d).
domain("B",return_er).
domain("B",leucocytes).
domain("B",release_b).
domain("B",release_e).
domain("B",er_sepsis_triage).
domain("C",lacticacid).
domain("C",release_a).
domain("C",release_b).
domain("C",admission_nc).
domain("C",iv_liquid).
domain("D",return_er).
domain("D",release_b).
domain("D",er_triage).
domain("D",crp).
domain("D",iv_antibiotics).
root((and,(notchainresponse,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
