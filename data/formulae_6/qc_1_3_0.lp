% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['release_a']})
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("A",lacticacid).
root((notresponse,(A,iv_antibiotics,))) :- iota("A",A).
