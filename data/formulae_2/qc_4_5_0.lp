% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['lacticacid'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",iv_liquid).
domain("A",leucocytes).
domain("A",admission_ic).
domain("A",release_e).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("B",admission_ic).
domain("B",return_er).
domain("B",release_e).
domain("C",return_er).
domain("C",iv_liquid).
domain("C",release_c).
domain("C",lacticacid).
domain("C",er_sepsis_triage).
domain("D",return_er).
domain("D",release_a).
domain("D",admission_nc).
domain("D",release_c).
domain("D",er_triage).
root((and,(notchainprecedence,(A,return_er,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,admission_nc,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
