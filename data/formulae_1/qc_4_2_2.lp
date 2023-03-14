% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['lacticacid'], 'B': ['lacticacid'], 'C': ['return_er'], 'D': ['crp']})
domain("A",lacticacid).
domain("A",admission_nc).
domain("B",lacticacid).
domain("B",release_c).
domain("C",return_er).
domain("C",admission_nc).
domain("D",crp).
domain("D",return_er).
root((and,(respondedexistence,(A,er_registration,)),(and,(respondedexistence,(B,er_triage,)),(and,(notresponse,(C,er_triage,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
