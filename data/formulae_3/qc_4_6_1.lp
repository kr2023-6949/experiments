% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['leucocytes'], 'D': ['er_sepsis_triage']})
domain("A",return_er).
domain("A",release_d).
domain("A",er_registration).
domain("A",crp).
domain("A",release_e).
domain("A",er_triage).
domain("B",return_er).
domain("B",er_sepsis_triage).
domain("B",admission_nc).
domain("B",lacticacid).
domain("B",iv_antibiotics).
domain("B",admission_ic).
domain("C",leucocytes).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("C",lacticacid).
domain("C",release_e).
domain("C",release_d).
domain("D",er_sepsis_triage).
domain("D",release_a).
domain("D",crp).
domain("D",release_e).
domain("D",lacticacid).
domain("D",leucocytes).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,iv_antibiotics,)),(and,(choice,(C,er_triage,)),(choice,(D,lacticacid,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
