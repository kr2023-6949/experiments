% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['crp'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['leucocytes']})
domain("A",crp).
domain("A",er_sepsis_triage).
domain("A",release_d).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("B",er_triage).
domain("B",iv_liquid).
domain("B",release_a).
domain("B",er_registration).
domain("B",release_e).
domain("C",return_er).
domain("C",admission_nc).
domain("C",release_b).
domain("C",crp).
domain("C",release_c).
domain("D",leucocytes).
domain("D",admission_ic).
domain("D",release_a).
domain("D",lacticacid).
domain("D",release_b).
root((and,(notchainresponse,(A,return_er,)),(and,(choice,(B,crp,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_registration,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
