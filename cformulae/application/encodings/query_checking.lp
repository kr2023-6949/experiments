1 { iota(VAR,VAL): domain(VAR,VAL) } 1 :- domain(VAR,_).

node(C,false) :- root(C).
node(LHS,true; RHS,true) :- node((or,LHS,RHS),_).
node(LHS,X; RHS,X) :- node((and,LHS,RHS),X).
node(C,true) :- node((_not,C),_).
atomic((T,A)) :- node((T,A),_), T != neg.

holds(C,@atomic_check(C)) :- atomic(C).

support(C,S) :- S = #sum{F,TID: holds(C,TID), trace(TID,F)}, node(C,_).
support(C,S) :- S = #sum{F,TID: holds(C,TID), trace(TID,F)}, atomic(C).
:- node(C,false), support(C,S), S < support_threshold.

holds((and,LHS,RHS),TID) :-
	holds(LHS,TID),
	holds(RHS,TID),
	node((and,LHS,RHS),_).

holds((or,LHS,RHS),TID) :-
	node((or,LHS,RHS),_),
	holds(LHS,TID).
holds((or,LHS,RHS),TID) :-
	node((or,LHS,RHS),_),
	holds(RHS,TID).

holds((neg,C),TID) :-
	node((neg,C),_),
	not holds(C,TID),
	trace(TID,_).

#show.
#show iota/2.
#show support(C,S): root(C), support(C,S).