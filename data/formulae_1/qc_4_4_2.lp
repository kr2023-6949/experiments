% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['lacticacid'], 'B': ['lacticacid'], 'C': ['return_er'], 'D': ['crp']})
domain("A",lacticacid).
domain("A",er_registration).
domain("A",release_a).
domain("A",crp).
domain("B",lacticacid).
domain("B",release_e).
domain("B",admission_ic).
domain("B",release_b).
domain("C",return_er).
domain("C",admission_nc).
domain("C",release_c).
domain("C",release_b).
domain("D",crp).
domain("D",iv_antibiotics).
domain("D",iv_liquid).
domain("D",er_registration).
root((and,(respondedexistence,(A,er_registration,)),(and,(respondedexistence,(B,er_triage,)),(and,(notresponse,(C,er_triage,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
