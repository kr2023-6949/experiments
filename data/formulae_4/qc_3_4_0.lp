% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['return_er'], 'B': ['admission_nc'], 'C': ['lacticacid']})
domain("A",return_er).
domain("A",er_triage).
domain("A",admission_nc).
domain("A",release_d).
domain("B",admission_nc).
domain("B",return_er).
domain("B",lacticacid).
domain("B",release_d).
domain("C",lacticacid).
domain("C",leucocytes).
domain("C",er_sepsis_triage).
domain("C",iv_antibiotics).
root((and,(notchainprecedence,(A,er_triage,)),(and,(alternateprecedence,(B,return_er,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
