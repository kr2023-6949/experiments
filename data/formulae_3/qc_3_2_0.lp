% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['release_a'], 'B': ['crp'], 'C': ['release_a']})
domain("A",release_a).
domain("A",er_registration).
domain("B",crp).
domain("B",release_a).
domain("C",release_a).
domain("C",admission_nc).
root((and,(notchainprecedence,(A,admission_nc,)),(and,(notchainprecedence,(B,return_er,)),(respondedexistence,(C,er_registration,))))) :- iota("B",B),iota("A",A),iota("C",C).
