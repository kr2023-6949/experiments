% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['lacticacid'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",leucocytes).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
domain("C",return_er).
domain("C",admission_nc).
domain("D",return_er).
domain("D",release_d).
root((and,(notchainprecedence,(A,return_er,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,admission_nc,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
