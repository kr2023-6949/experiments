% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_triage'], 'B': ['iv_liquid'], 'C': ['er_registration'], 'D': ['release_a']})
domain("A",er_triage).
domain("A",iv_liquid).
domain("A",release_e).
domain("A",release_d).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",crp).
domain("B",iv_antibiotics).
domain("C",er_registration).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("C",crp).
domain("D",release_a).
domain("D",iv_liquid).
domain("D",leucocytes).
domain("D",return_er).
root((and,(choice,(A,release_a,)),(and,(notchainresponse,(B,return_er,)),(and,(notchainresponse,(C,return_er,)),(choice,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
