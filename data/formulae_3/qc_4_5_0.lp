% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_registration'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['er_triage']})
domain("A",er_registration).
domain("A",release_c).
domain("A",release_b).
domain("A",release_a).
domain("A",admission_ic).
domain("B",iv_antibiotics).
domain("B",crp).
domain("B",lacticacid).
domain("B",release_e).
domain("B",admission_nc).
domain("C",return_er).
domain("C",iv_liquid).
domain("C",release_c).
domain("C",release_a).
domain("C",release_d).
domain("D",er_triage).
domain("D",iv_liquid).
domain("D",lacticacid).
domain("D",release_b).
domain("D",leucocytes).
root((and,(choice,(A,lacticacid,)),(and,(notchainresponse,(B,return_er,)),(and,(notresponse,(C,er_registration,)),(notchainresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
