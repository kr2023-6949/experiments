% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['iv_antibiotics'], 'C': ['release_a']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",release_c).
domain("B",crp).
domain("C",release_a).
domain("C",leucocytes).
domain("C",return_er).
root((and,(notprecedence,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
