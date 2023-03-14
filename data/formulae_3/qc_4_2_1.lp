% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['leucocytes'], 'D': ['er_sepsis_triage']})
domain("A",return_er).
domain("A",er_registration).
domain("B",return_er).
domain("B",er_registration).
domain("C",leucocytes).
domain("C",return_er).
domain("D",er_sepsis_triage).
domain("D",admission_ic).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,iv_antibiotics,)),(and,(choice,(C,er_triage,)),(choice,(D,lacticacid,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
