% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_registration'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['er_triage']})
domain("A",er_registration).
domain("A",release_b).
domain("B",iv_antibiotics).
domain("B",lacticacid).
domain("C",return_er).
domain("C",admission_ic).
domain("D",er_triage).
domain("D",crp).
root((and,(choice,(A,lacticacid,)),(and,(notchainresponse,(B,return_er,)),(and,(notresponse,(C,er_registration,)),(notchainresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
