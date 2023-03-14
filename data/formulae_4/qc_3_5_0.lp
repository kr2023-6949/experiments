% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['return_er'], 'B': ['admission_nc'], 'C': ['lacticacid']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",release_e).
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("B",admission_nc).
domain("B",er_sepsis_triage).
domain("B",er_registration).
domain("B",lacticacid).
domain("B",return_er).
domain("C",lacticacid).
domain("C",iv_liquid).
domain("C",release_e).
domain("C",admission_ic).
domain("C",release_d).
root((and,(notchainprecedence,(A,er_triage,)),(and,(alternateprecedence,(B,return_er,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
