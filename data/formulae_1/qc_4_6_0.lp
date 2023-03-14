% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['admission_nc'], 'B': ['er_sepsis_triage'], 'C': ['admission_nc'], 'D': ['lacticacid']})
domain("A",admission_nc).
domain("A",admission_ic).
domain("A",er_triage).
domain("A",return_er).
domain("A",lacticacid).
domain("A",release_c).
domain("B",er_sepsis_triage).
domain("B",release_b).
domain("B",release_c).
domain("B",admission_ic).
domain("B",release_a).
domain("B",iv_liquid).
domain("C",admission_nc).
domain("C",er_registration).
domain("C",crp).
domain("C",admission_ic).
domain("C",release_c).
domain("C",release_a).
domain("D",lacticacid).
domain("D",er_triage).
domain("D",release_a).
domain("D",return_er).
domain("D",er_sepsis_triage).
domain("D",release_d).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notchainresponse,(B,return_er,)),(and,(notprecedence,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
