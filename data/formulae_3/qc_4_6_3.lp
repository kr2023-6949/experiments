% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",release_c).
domain("A",release_a).
domain("A",crp).
domain("A",iv_liquid).
domain("A",lacticacid).
domain("B",return_er).
domain("B",lacticacid).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",release_a).
domain("B",er_registration).
domain("C",lacticacid).
domain("C",er_sepsis_triage).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
domain("C",er_triage).
domain("C",release_c).
domain("D",return_er).
domain("D",admission_nc).
domain("D",er_triage).
domain("D",er_registration).
domain("D",admission_ic).
domain("D",iv_antibiotics).
root((and,(notchainresponse,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
