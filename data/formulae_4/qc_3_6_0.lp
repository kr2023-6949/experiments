% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['return_er'], 'B': ['admission_nc'], 'C': ['lacticacid']})
domain("A",return_er).
domain("A",admission_ic).
domain("A",crp).
domain("A",release_e).
domain("A",er_sepsis_triage).
domain("A",leucocytes).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",crp).
domain("B",release_c).
domain("B",release_d).
domain("B",er_sepsis_triage).
domain("C",lacticacid).
domain("C",leucocytes).
domain("C",release_e).
domain("C",release_b).
domain("C",release_a).
domain("C",iv_liquid).
root((and,(notchainprecedence,(A,er_triage,)),(and,(alternateprecedence,(B,return_er,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
