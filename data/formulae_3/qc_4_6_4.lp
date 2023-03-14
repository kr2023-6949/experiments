% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",iv_antibiotics).
domain("A",release_a).
domain("A",release_c).
domain("A",release_e).
domain("A",release_d).
domain("B",return_er).
domain("B",er_triage).
domain("B",er_sepsis_triage).
domain("B",leucocytes).
domain("B",admission_ic).
domain("B",iv_antibiotics).
domain("C",lacticacid).
domain("C",admission_nc).
domain("C",er_registration).
domain("C",er_triage).
domain("C",admission_ic).
domain("C",crp).
domain("D",return_er).
domain("D",er_registration).
domain("D",leucocytes).
domain("D",admission_nc).
domain("D",iv_liquid).
domain("D",er_triage).
root((and,(notprecedence,(A,iv_liquid,)),(and,(notchainprecedence,(B,er_triage,)),(and,(choice,(C,er_registration,)),(notresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
