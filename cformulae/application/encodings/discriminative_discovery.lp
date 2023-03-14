partition(K) :- label(_,K).
above_support(C,L) :- partition(L), threshold(L,S), root(C), #sum{F,TID: accepts(C,TID), trace(TID,F), label(TID,L) } > S.
rejects_something(C,L) :- partition(L), root(C), rejects(C,TID), label(TID,L).
1 { assign(C,L): above_support(C,L), rejects_something(C,L'), L != L' } m :- partition(L).
log_reject(L,TID) :- assign(C,L), rejects(C,TID).
:- partition(L'), label(TID,L), not log_reject(L',TID), L != L'.

#show assign/2.