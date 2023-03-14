% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['crp'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['leucocytes']})
domain("A",crp).
domain("A",iv_antibiotics).
domain("B",er_triage).
domain("B",release_a).
domain("C",return_er).
domain("C",crp).
domain("D",leucocytes).
domain("D",iv_antibiotics).
root((and,(notchainresponse,(A,return_er,)),(and,(choice,(B,crp,)),(and,(respondedexistence,(C,er_triage,)),(respondedexistence,(D,er_registration,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
