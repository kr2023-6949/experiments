% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",er_triage).
domain("A",return_er).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",admission_nc).
domain("B",release_b).
domain("C",er_registration).
domain("C",release_e).
domain("C",release_b).
root((and,(choice,(A,crp,)),(and,(notprecedence,(B,iv_antibiotics,)),(choice,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
