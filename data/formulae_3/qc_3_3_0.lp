% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['release_a'], 'B': ['crp'], 'C': ['release_a']})
domain("A",release_a).
domain("A",release_c).
domain("A",lacticacid).
domain("B",crp).
domain("B",return_er).
domain("B",er_registration).
domain("C",release_a).
domain("C",er_sepsis_triage).
domain("C",lacticacid).
root((and,(notchainprecedence,(A,admission_nc,)),(and,(notchainprecedence,(B,return_er,)),(respondedexistence,(C,er_registration,))))) :- iota("B",B),iota("A",A),iota("C",C).
