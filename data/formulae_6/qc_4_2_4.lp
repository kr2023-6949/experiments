% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_triage'], 'B': ['iv_liquid'], 'C': ['er_registration'], 'D': ['release_a']})
domain("A",er_triage).
domain("A",iv_liquid).
domain("B",iv_liquid).
domain("B",er_registration).
domain("C",er_registration).
domain("C",lacticacid).
domain("D",release_a).
domain("D",er_registration).
root((and,(choice,(A,release_a,)),(and,(notchainresponse,(B,return_er,)),(and,(notchainresponse,(C,return_er,)),(choice,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
