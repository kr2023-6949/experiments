% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_triage'], 'D': ['admission_nc']})
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",iv_liquid).
domain("C",er_triage).
domain("C",release_d).
domain("D",admission_nc).
domain("D",iv_antibiotics).
root((and,(notprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,admission_nc,)),(choice,(D,er_registration,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
