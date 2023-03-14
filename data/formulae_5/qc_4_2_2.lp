% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",release_c).
domain("B",return_er).
domain("B",release_e).
domain("C",return_er).
domain("C",release_b).
domain("D",iv_antibiotics).
domain("D",crp).
root((and,(choice,(A,crp,)),(and,(notchainprecedence,(B,er_registration,)),(and,(notresponse,(C,iv_liquid,)),(notchainprecedence,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
