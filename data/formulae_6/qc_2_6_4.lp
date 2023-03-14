% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['release_a']})
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",release_e).
domain("A",release_c).
domain("A",lacticacid).
domain("A",release_b).
domain("B",release_a).
domain("B",iv_antibiotics).
domain("B",return_er).
domain("B",release_b).
domain("B",admission_nc).
domain("B",lacticacid).
root((and,(notchainprecedence,(A,release_a,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
