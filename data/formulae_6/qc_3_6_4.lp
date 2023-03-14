% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbeb0>, {'A': ['er_sepsis_triage'], 'B': ['return_er'], 'C': ['admission_nc']})
domain("A",er_sepsis_triage).
domain("A",iv_antibiotics).
domain("A",lacticacid).
domain("A",admission_nc).
domain("A",release_e).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",lacticacid).
domain("B",release_d).
domain("B",crp).
domain("B",er_registration).
domain("B",admission_ic).
domain("C",admission_nc).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("C",return_er).
domain("C",er_sepsis_triage).
domain("C",release_c).
root((and,(choice,(A,er_registration,)),(and,(notprecedence,(B,er_triage,)),(precedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
