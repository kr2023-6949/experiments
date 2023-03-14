% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['return_er'], 'B': ['er_registration']})
domain("A",return_er).
domain("A",crp).
domain("B",er_registration).
domain("B",iv_liquid).
root((and,(notprecedence,(A,er_sepsis_triage,)),(notchainprecedence,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
