% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['lacticacid'], 'B': ['lacticacid'], 'C': ['return_er'], 'D': ['crp']})
domain("A",lacticacid).
domain("A",release_d).
domain("A",er_registration).
domain("A",crp).
domain("A",release_a).
domain("B",lacticacid).
domain("B",admission_nc).
domain("B",release_c).
domain("B",leucocytes).
domain("B",admission_ic).
domain("C",return_er).
domain("C",release_a).
domain("C",admission_ic).
domain("C",release_e).
domain("C",crp).
domain("D",crp).
domain("D",iv_antibiotics).
domain("D",return_er).
domain("D",admission_ic).
domain("D",release_d).
root((and,(respondedexistence,(A,er_registration,)),(and,(respondedexistence,(B,er_triage,)),(and,(notresponse,(C,er_triage,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
