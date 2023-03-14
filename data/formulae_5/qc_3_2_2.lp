% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er'], 'B': ['iv_liquid'], 'C': ['iv_liquid']})
domain("A",return_er).
domain("A",leucocytes).
domain("B",iv_liquid).
domain("B",leucocytes).
domain("C",iv_liquid).
domain("C",leucocytes).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
