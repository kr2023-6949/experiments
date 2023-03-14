% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['admission_nc'], 'B': ['er_sepsis_triage'], 'C': ['admission_nc'], 'D': ['lacticacid']})
domain("A",admission_nc).
domain("A",release_b).
domain("A",er_triage).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",er_registration).
domain("C",admission_nc).
domain("C",return_er).
domain("C",er_sepsis_triage).
domain("D",lacticacid).
domain("D",admission_ic).
domain("D",leucocytes).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notchainresponse,(B,return_er,)),(and,(notprecedence,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
