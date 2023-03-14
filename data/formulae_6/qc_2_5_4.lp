% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_sepsis_triage'], 'B': ['release_a']})
domain("A",er_sepsis_triage).
domain("A",return_er).
domain("A",release_d).
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("B",release_a).
domain("B",release_d).
domain("B",iv_antibiotics).
domain("B",admission_nc).
domain("B",leucocytes).
root((and,(notchainprecedence,(A,release_a,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
