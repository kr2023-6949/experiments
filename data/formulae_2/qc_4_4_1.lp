% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['release_a'], 'B': ['iv_antibiotics'], 'C': ['release_a'], 'D': ['release_a']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",release_c).
domain("A",release_e).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("B",iv_liquid).
domain("B",release_a).
domain("C",release_a).
domain("C",admission_ic).
domain("C",return_er).
domain("C",release_d).
domain("D",release_a).
domain("D",release_b).
domain("D",return_er).
domain("D",er_registration).
root((and,(notprecedence,(A,er_sepsis_triage,)),(and,(notprecedence,(B,er_sepsis_triage,)),(and,(notchainprecedence,(C,iv_antibiotics,)),(notprecedence,(D,iv_liquid,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
