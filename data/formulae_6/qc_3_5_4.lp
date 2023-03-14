% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbeb0>, {'A': ['er_sepsis_triage'], 'B': ['return_er'], 'C': ['admission_nc']})
domain("A",er_sepsis_triage).
domain("A",release_d).
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",leucocytes).
domain("B",return_er).
domain("B",admission_nc).
domain("B",er_registration).
domain("B",release_c).
domain("B",iv_liquid).
domain("C",admission_nc).
domain("C",crp).
domain("C",release_d).
domain("C",admission_ic).
domain("C",iv_liquid).
root((and,(choice,(A,er_registration,)),(and,(notprecedence,(B,er_triage,)),(precedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
