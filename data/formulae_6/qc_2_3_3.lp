% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['return_er'], 'B': ['er_registration']})
domain("A",return_er).
domain("A",iv_antibiotics).
domain("A",leucocytes).
domain("B",er_registration).
domain("B",release_d).
domain("B",release_e).
root((and,(notprecedence,(A,er_sepsis_triage,)),(notchainprecedence,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
