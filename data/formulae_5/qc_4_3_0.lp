% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['crp'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['leucocytes']})
domain("A",crp).
domain("A",admission_ic).
domain("A",release_a).
domain("B",er_triage).
domain("B",iv_liquid).
domain("B",release_a).
domain("C",return_er).
domain("C",release_e).
domain("C",er_sepsis_triage).
domain("D",leucocytes).
domain("D",er_registration).
domain("D",release_d).
root((and,(notchainresponse,(A,return_er,)),(and,(choice,(B,crp,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_registration,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
