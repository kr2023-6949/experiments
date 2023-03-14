% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_triage'], 'D': ['admission_nc']})
domain("A",release_a).
domain("A",lacticacid).
domain("A",er_registration).
domain("A",admission_ic).
domain("B",return_er).
domain("B",release_d).
domain("B",crp).
domain("B",release_c).
domain("C",er_triage).
domain("C",release_b).
domain("C",admission_nc).
domain("C",release_a).
domain("D",admission_nc).
domain("D",er_triage).
domain("D",crp).
domain("D",release_b).
root((and,(notprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(and,(notchainresponse,(C,admission_nc,)),(choice,(D,er_registration,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
