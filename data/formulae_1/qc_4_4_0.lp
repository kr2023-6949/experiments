% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['admission_nc'], 'B': ['er_sepsis_triage'], 'C': ['admission_nc'], 'D': ['lacticacid']})
domain("A",admission_nc).
domain("A",leucocytes).
domain("A",release_b).
domain("A",crp).
domain("B",er_sepsis_triage).
domain("B",release_b).
domain("B",release_d).
domain("B",iv_liquid).
domain("C",admission_nc).
domain("C",release_a).
domain("C",return_er).
domain("C",release_c).
domain("D",lacticacid).
domain("D",er_sepsis_triage).
domain("D",release_e).
domain("D",iv_antibiotics).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notchainresponse,(B,return_er,)),(and,(notprecedence,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
