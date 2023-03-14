% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbeb0>, {'A': ['er_sepsis_triage'], 'B': ['return_er'], 'C': ['admission_nc']})
domain("A",er_sepsis_triage).
domain("A",return_er).
domain("B",return_er).
domain("B",leucocytes).
domain("C",admission_nc).
domain("C",admission_ic).
root((and,(choice,(A,er_registration,)),(and,(notprecedence,(B,er_triage,)),(precedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
