% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['lacticacid'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",leucocytes).
domain("A",er_sepsis_triage).
domain("A",release_e).
domain("A",iv_antibiotics).
domain("A",return_er).
domain("B",iv_antibiotics).
domain("B",lacticacid).
domain("B",leucocytes).
domain("B",release_c).
domain("B",return_er).
domain("B",admission_nc).
domain("C",return_er).
domain("C",release_a).
domain("C",admission_ic).
domain("C",crp).
domain("C",er_triage).
domain("C",iv_liquid).
domain("D",return_er).
domain("D",release_c).
domain("D",iv_liquid).
domain("D",release_a).
domain("D",crp).
domain("D",lacticacid).
root((and,(notchainprecedence,(A,return_er,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,admission_nc,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
