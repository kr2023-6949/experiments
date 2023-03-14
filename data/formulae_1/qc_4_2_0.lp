% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['admission_nc'], 'B': ['er_sepsis_triage'], 'C': ['admission_nc'], 'D': ['lacticacid']})
domain("A",admission_nc).
domain("A",release_e).
domain("B",er_sepsis_triage).
domain("B",admission_ic).
domain("C",admission_nc).
domain("C",lacticacid).
domain("D",lacticacid).
domain("D",crp).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notchainresponse,(B,return_er,)),(and,(notprecedence,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
