% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['er_triage'], 'B': ['er_triage']})
domain("A",er_triage).
domain("A",er_registration).
domain("A",er_sepsis_triage).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",er_sepsis_triage).
root((and,(notchainresponse,(A,admission_nc,)),(existence1,(B,)))) :- iota("B",B),iota("A",A).
