% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['release_a'], 'B': ['iv_antibiotics'], 'C': ['release_a'], 'D': ['release_a']})
domain("A",release_a).
domain("A",release_e).
domain("A",er_registration).
domain("A",er_triage).
domain("A",release_d).
domain("A",admission_nc).
domain("B",iv_antibiotics).
domain("B",admission_nc).
domain("B",release_b).
domain("B",er_triage).
domain("B",return_er).
domain("B",release_a).
domain("C",release_a).
domain("C",release_d).
domain("C",er_registration).
domain("C",release_b).
domain("C",er_triage).
domain("C",crp).
domain("D",release_a).
domain("D",er_triage).
domain("D",admission_nc).
domain("D",admission_ic).
domain("D",release_b).
domain("D",lacticacid).
root((and,(notprecedence,(A,er_sepsis_triage,)),(and,(notprecedence,(B,er_sepsis_triage,)),(and,(notchainprecedence,(C,iv_antibiotics,)),(notprecedence,(D,iv_liquid,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
