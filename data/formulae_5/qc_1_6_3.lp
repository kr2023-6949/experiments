% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("A",lacticacid).
domain("A",er_sepsis_triage).
root((notchainresponse,(A,release_a,))) :- iota("A",A).
