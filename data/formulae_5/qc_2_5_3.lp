% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",er_triage).
domain("A",release_c).
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("B",return_er).
domain("B",admission_nc).
domain("B",crp).
domain("B",admission_ic).
domain("B",er_registration).
root((and,(notprecedence,(A,admission_nc,)),(choice,(B,er_registration,)))) :- iota("B",B),iota("A",A).
