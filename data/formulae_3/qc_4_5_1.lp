% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['leucocytes'], 'D': ['er_sepsis_triage']})
domain("A",return_er).
domain("A",leucocytes).
domain("A",lacticacid).
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("B",return_er).
domain("B",lacticacid).
domain("B",admission_nc).
domain("B",er_triage).
domain("B",iv_liquid).
domain("C",leucocytes).
domain("C",admission_ic).
domain("C",lacticacid).
domain("C",release_c).
domain("C",release_d).
domain("D",er_sepsis_triage).
domain("D",leucocytes).
domain("D",admission_nc).
domain("D",return_er).
domain("D",release_b).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,iv_antibiotics,)),(and,(choice,(C,er_triage,)),(choice,(D,lacticacid,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
