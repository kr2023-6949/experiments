% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",er_triage).
domain("A",release_c).
domain("A",iv_antibiotics).
domain("A",return_er).
domain("B",return_er).
domain("B",release_c).
domain("B",lacticacid).
domain("B",iv_antibiotics).
domain("C",er_registration).
domain("C",release_c).
domain("C",release_b).
domain("C",release_d).
root((and,(choice,(A,crp,)),(and,(notprecedence,(B,iv_antibiotics,)),(choice,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
