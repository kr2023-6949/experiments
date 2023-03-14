% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['release_a'], 'B': ['iv_antibiotics'], 'C': ['release_a'], 'D': ['release_a']})
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",er_triage).
domain("C",release_a).
domain("C",leucocytes).
domain("D",release_a).
domain("D",er_triage).
root((and,(notprecedence,(A,er_sepsis_triage,)),(and,(notprecedence,(B,er_sepsis_triage,)),(and,(notchainprecedence,(C,iv_antibiotics,)),(notprecedence,(D,iv_liquid,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
