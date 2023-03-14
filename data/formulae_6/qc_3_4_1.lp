% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['iv_antibiotics'], 'C': ['release_a']})
domain("A",return_er).
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",er_triage).
domain("B",iv_antibiotics).
domain("B",admission_ic).
domain("B",er_sepsis_triage).
domain("B",return_er).
domain("C",release_a).
domain("C",crp).
domain("C",er_sepsis_triage).
domain("C",release_e).
root((and,(notprecedence,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
