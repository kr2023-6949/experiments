% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['crp'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['admission_nc']})
domain("A",crp).
domain("A",er_registration).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",release_b).
domain("B",leucocytes).
domain("C",return_er).
domain("C",iv_liquid).
domain("C",release_e).
domain("D",admission_nc).
domain("D",lacticacid).
domain("D",crp).
root((and,(choice,(A,er_registration,)),(and,(notresponse,(B,er_sepsis_triage,)),(and,(choice,(C,er_registration,)),(choice,(D,er_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
