% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['crp'], 'C': ['er_registration']})
domain("A",er_registration).
domain("A",return_er).
domain("A",lacticacid).
domain("B",crp).
domain("B",release_c).
domain("B",release_a).
domain("C",er_registration).
domain("C",er_triage).
domain("C",iv_antibiotics).
root((and,(notchainresponse,(A,iv_antibiotics,)),(and,(notchainresponse,(B,return_er,)),(precedence,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
