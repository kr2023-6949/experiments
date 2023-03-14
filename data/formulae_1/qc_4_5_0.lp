% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['admission_nc'], 'B': ['er_sepsis_triage'], 'C': ['admission_nc'], 'D': ['lacticacid']})
domain("A",admission_nc).
domain("A",lacticacid).
domain("A",return_er).
domain("A",er_registration).
domain("A",er_sepsis_triage).
domain("B",er_sepsis_triage).
domain("B",release_b).
domain("B",crp).
domain("B",admission_ic).
domain("B",release_d).
domain("C",admission_nc).
domain("C",er_registration).
domain("C",er_triage).
domain("C",lacticacid).
domain("C",iv_antibiotics).
domain("D",lacticacid).
domain("D",release_c).
domain("D",release_d).
domain("D",iv_antibiotics).
domain("D",er_registration).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notchainresponse,(B,return_er,)),(and,(notprecedence,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
