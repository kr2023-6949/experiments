% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['release_a']})
domain("A",er_sepsis_triage).
domain("A",lacticacid).
domain("A",release_e).
domain("A",admission_ic).
domain("B",release_a).
domain("B",er_triage).
domain("B",release_d).
domain("B",er_registration).
root((and,(notchainprecedence,(A,release_a,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
