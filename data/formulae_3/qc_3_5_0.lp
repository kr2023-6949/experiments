% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['release_a'], 'B': ['crp'], 'C': ['release_a']})
domain("A",release_a).
domain("A",er_triage).
domain("A",lacticacid).
domain("A",return_er).
domain("A",release_c).
domain("B",crp).
domain("B",return_er).
domain("B",leucocytes).
domain("B",admission_ic).
domain("B",er_sepsis_triage).
domain("C",release_a).
domain("C",leucocytes).
domain("C",lacticacid).
domain("C",release_b).
domain("C",admission_nc).
root((and,(notchainprecedence,(A,admission_nc,)),(and,(notchainprecedence,(B,return_er,)),(respondedexistence,(C,er_registration,))))) :- iota("B",B),iota("A",A),iota("C",C).
