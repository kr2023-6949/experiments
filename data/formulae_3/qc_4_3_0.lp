% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_registration'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['er_triage']})
domain("A",er_registration).
domain("A",leucocytes).
domain("A",release_a).
domain("B",iv_antibiotics).
domain("B",er_registration).
domain("B",release_a).
domain("C",return_er).
domain("C",admission_nc).
domain("C",release_e).
domain("D",er_triage).
domain("D",iv_antibiotics).
domain("D",release_c).
root((and,(choice,(A,lacticacid,)),(and,(notchainresponse,(B,return_er,)),(and,(notresponse,(C,er_registration,)),(notchainresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
