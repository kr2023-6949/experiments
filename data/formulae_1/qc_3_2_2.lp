% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['return_er']})
domain("A",release_a).
domain("A",iv_liquid).
domain("B",er_registration).
domain("B",release_b).
domain("C",return_er).
domain("C",release_c).
root((and,(notprecedence,(A,iv_antibiotics,)),(and,(choice,(B,return_er,)),(notresponse,(C,admission_nc,))))) :- iota("A",A),iota("B",B),iota("C",C).
