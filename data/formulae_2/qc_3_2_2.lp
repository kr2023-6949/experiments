% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",release_a).
domain("A",release_b).
domain("B",return_er).
domain("B",crp).
domain("C",return_er).
domain("C",crp).
root((and,(respondedexistence,(A,er_registration,)),(and,(notchainresponse,(B,iv_liquid,)),(notchainprecedence,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
