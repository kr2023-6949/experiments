% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['crp'], 'D': ['return_er']})
domain("A",release_a).
domain("A",leucocytes).
domain("B",er_triage).
domain("B",iv_liquid).
domain("C",crp).
domain("C",release_a).
domain("D",return_er).
domain("D",iv_liquid).
root((and,(notprecedence,(A,er_triage,)),(and,(precedence,(B,return_er,)),(and,(choice,(C,er_sepsis_triage,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
