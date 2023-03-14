% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['lacticacid'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",release_e).
domain("B",iv_antibiotics).
domain("B",admission_ic).
domain("B",er_registration).
domain("B",er_sepsis_triage).
domain("C",return_er).
domain("C",admission_ic).
domain("C",admission_nc).
domain("C",er_triage).
domain("D",return_er).
domain("D",leucocytes).
domain("D",lacticacid).
domain("D",crp).
root((and,(notchainprecedence,(A,return_er,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,admission_nc,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
