% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",release_c).
domain("A",release_d).
domain("A",lacticacid).
domain("A",release_b).
domain("B",return_er).
domain("B",release_d).
domain("B",crp).
domain("B",er_sepsis_triage).
domain("B",admission_ic).
domain("B",release_a).
domain("C",er_registration).
domain("C",er_triage).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
domain("C",release_b).
domain("C",admission_ic).
root((and,(choice,(A,crp,)),(and,(notprecedence,(B,iv_antibiotics,)),(choice,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
