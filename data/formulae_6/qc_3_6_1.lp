% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['iv_antibiotics'], 'C': ['release_a']})
domain("A",return_er).
domain("A",lacticacid).
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("A",crp).
domain("A",iv_antibiotics).
domain("B",iv_antibiotics).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",iv_liquid).
domain("B",admission_nc).
domain("B",admission_ic).
domain("C",release_a).
domain("C",release_c).
domain("C",er_triage).
domain("C",er_registration).
domain("C",leucocytes).
domain("C",er_sepsis_triage).
root((and,(notprecedence,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
