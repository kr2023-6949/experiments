% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['iv_antibiotics'], 'C': ['release_a']})
domain("A",return_er).
domain("A",release_b).
domain("A",lacticacid).
domain("A",crp).
domain("A",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",release_d).
domain("B",iv_liquid).
domain("C",release_a).
domain("C",er_sepsis_triage).
domain("C",iv_liquid).
domain("C",iv_antibiotics).
domain("C",leucocytes).
root((and,(notprecedence,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
