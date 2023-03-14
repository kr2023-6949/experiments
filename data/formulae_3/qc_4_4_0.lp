% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['er_registration'], 'B': ['iv_antibiotics'], 'C': ['return_er'], 'D': ['er_triage']})
domain("A",er_registration).
domain("A",iv_liquid).
domain("A",leucocytes).
domain("A",release_d).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("B",crp).
domain("B",admission_nc).
domain("C",return_er).
domain("C",iv_antibiotics).
domain("C",er_sepsis_triage).
domain("C",admission_nc).
domain("D",er_triage).
domain("D",er_registration).
domain("D",release_e).
domain("D",iv_antibiotics).
root((and,(choice,(A,lacticacid,)),(and,(notchainresponse,(B,return_er,)),(and,(notresponse,(C,er_registration,)),(notchainresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
