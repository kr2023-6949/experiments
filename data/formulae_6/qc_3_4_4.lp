% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbeb0>, {'A': ['er_sepsis_triage'], 'B': ['return_er'], 'C': ['admission_nc']})
domain("A",er_sepsis_triage).
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",return_er).
domain("B",return_er).
domain("B",er_triage).
domain("B",iv_liquid).
domain("B",admission_ic).
domain("C",admission_nc).
domain("C",er_registration).
domain("C",leucocytes).
domain("C",crp).
root((and,(choice,(A,er_registration,)),(and,(notprecedence,(B,er_triage,)),(precedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
