% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbeb0>, {'A': ['er_sepsis_triage'], 'B': ['return_er'], 'C': ['admission_nc']})
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",return_er).
domain("B",return_er).
domain("B",iv_liquid).
domain("B",iv_antibiotics).
domain("C",admission_nc).
domain("C",er_triage).
domain("C",er_registration).
root((and,(choice,(A,er_registration,)),(and,(notprecedence,(B,er_triage,)),(precedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
