% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['crp'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['admission_nc']})
domain("A",crp).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",admission_ic).
domain("C",return_er).
domain("C",iv_antibiotics).
domain("D",admission_nc).
domain("D",release_c).
root((and,(choice,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(and,(choice,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
