% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['release_a'], 'B': ['iv_antibiotics'], 'C': ['release_a'], 'D': ['release_a']})
domain("A",release_a).
domain("A",release_d).
domain("A",er_triage).
domain("A",release_b).
domain("A",release_c).
domain("B",iv_antibiotics).
domain("B",admission_ic).
domain("B",lacticacid).
domain("B",return_er).
domain("B",er_registration).
domain("C",release_a).
domain("C",crp).
domain("C",iv_antibiotics).
domain("C",leucocytes).
domain("C",release_d).
domain("D",release_a).
domain("D",release_d).
domain("D",admission_nc).
domain("D",crp).
domain("D",iv_liquid).
root((and,(notprecedence,(A,er_sepsis_triage,)),(and,(notprecedence,(B,er_sepsis_triage,)),(and,(notchainprecedence,(C,iv_antibiotics,)),(notprecedence,(D,iv_liquid,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
