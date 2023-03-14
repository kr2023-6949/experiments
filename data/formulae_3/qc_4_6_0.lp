% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_registration'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['er_triage']})
domain("A",er_registration).
domain("A",er_sepsis_triage).
domain("A",admission_nc).
domain("A",iv_antibiotics).
domain("A",lacticacid).
domain("A",release_c).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("B",er_registration).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",return_er).
domain("C",return_er).
domain("C",admission_nc).
domain("C",er_registration).
domain("C",release_c).
domain("C",release_e).
domain("C",er_triage).
domain("D",er_triage).
domain("D",er_registration).
domain("D",return_er).
domain("D",release_d).
domain("D",er_sepsis_triage).
domain("D",iv_liquid).
root((and,(choice,(A,lacticacid,)),(and,(notchainresponse,(B,return_er,)),(and,(notresponse,(C,er_registration,)),(notchainresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
