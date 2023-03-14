% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",iv_liquid).
domain("A",admission_ic).
domain("A",return_er).
domain("A",release_a).
domain("B",return_er).
domain("B",er_triage).
domain("B",crp).
domain("B",admission_nc).
domain("B",lacticacid).
domain("C",return_er).
domain("C",iv_liquid).
domain("C",leucocytes).
domain("C",lacticacid).
domain("C",admission_ic).
domain("D",iv_antibiotics).
domain("D",admission_ic).
domain("D",return_er).
domain("D",admission_nc).
domain("D",release_e).
root((and,(choice,(A,crp,)),(and,(notchainprecedence,(B,er_registration,)),(and,(notresponse,(C,iv_liquid,)),(notchainprecedence,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
