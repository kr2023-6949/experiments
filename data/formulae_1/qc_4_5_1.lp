% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_triage'], 'D': ['admission_nc']})
domain("A",release_a).
domain("A",release_c).
domain("A",er_sepsis_triage).
domain("A",admission_ic).
domain("A",release_b).
domain("B",return_er).
domain("B",admission_nc).
domain("B",release_e).
domain("B",lacticacid).
domain("B",release_a).
domain("C",er_triage).
domain("C",release_c).
domain("C",release_e).
domain("C",release_a).
domain("C",release_d).
domain("D",admission_nc).
domain("D",lacticacid).
domain("D",er_sepsis_triage).
domain("D",iv_antibiotics).
domain("D",leucocytes).
root((and,(notprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,admission_nc,)),(choice,(D,er_registration,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
