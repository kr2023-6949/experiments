% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['return_er'], 'B': ['crp'], 'C': ['iv_antibiotics']})
domain("A",return_er).
domain("A",lacticacid).
domain("B",crp).
domain("B",admission_nc).
domain("C",iv_antibiotics).
domain("C",lacticacid).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
