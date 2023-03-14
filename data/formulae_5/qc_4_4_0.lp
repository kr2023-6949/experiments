% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['crp'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['leucocytes']})
domain("A",crp).
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",lacticacid).
domain("B",release_c).
domain("C",return_er).
domain("C",release_c).
domain("C",release_b).
domain("C",crp).
domain("D",leucocytes).
domain("D",return_er).
domain("D",er_triage).
domain("D",release_d).
root((and,(notchainresponse,(A,return_er,)),(and,(choice,(B,crp,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_registration,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
