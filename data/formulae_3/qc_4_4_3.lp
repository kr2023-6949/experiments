% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",admission_ic).
domain("A",er_sepsis_triage).
domain("A",admission_nc).
domain("B",return_er).
domain("B",admission_ic).
domain("B",release_e).
domain("B",er_sepsis_triage).
domain("C",lacticacid).
domain("C",return_er).
domain("C",leucocytes).
domain("C",er_triage).
domain("D",return_er).
domain("D",admission_nc).
domain("D",lacticacid).
domain("D",release_c).
root((and,(notchainresponse,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
