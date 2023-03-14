% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['crp'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['leucocytes']})
domain("A",crp).
domain("A",er_triage).
domain("A",lacticacid).
domain("A",iv_antibiotics).
domain("A",leucocytes).
domain("A",return_er).
domain("B",er_triage).
domain("B",lacticacid).
domain("B",crp).
domain("B",return_er).
domain("B",er_sepsis_triage).
domain("B",admission_ic).
domain("C",return_er).
domain("C",admission_nc).
domain("C",release_b).
domain("C",lacticacid).
domain("C",admission_ic).
domain("C",release_d).
domain("D",leucocytes).
domain("D",er_triage).
domain("D",return_er).
domain("D",release_d).
domain("D",release_c).
domain("D",er_registration).
root((and,(notchainresponse,(A,return_er,)),(and,(choice,(B,crp,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_registration,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
