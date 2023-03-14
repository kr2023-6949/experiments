% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_triage'], 'B': ['iv_liquid'], 'C': ['er_registration'], 'D': ['release_a']})
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("B",iv_liquid).
domain("B",release_a).
domain("B",crp).
domain("C",er_registration).
domain("C",iv_liquid).
domain("C",release_b).
domain("D",release_a).
domain("D",lacticacid).
domain("D",admission_ic).
root((and,(choice,(A,release_a,)),(and,(notchainresponse,(B,return_er,)),(and,(notchainresponse,(C,return_er,)),(choice,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
