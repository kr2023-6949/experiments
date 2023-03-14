% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_triage'], 'D': ['admission_nc']})
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",release_e).
domain("A",release_c).
domain("A",crp).
domain("A",return_er).
domain("B",return_er).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",admission_ic).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("C",er_triage).
domain("C",lacticacid).
domain("C",release_e).
domain("C",crp).
domain("C",leucocytes).
domain("C",er_registration).
domain("D",admission_nc).
domain("D",admission_ic).
domain("D",release_a).
domain("D",release_e).
domain("D",er_triage).
domain("D",crp).
root((and,(notprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,admission_nc,)),(choice,(D,er_registration,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
