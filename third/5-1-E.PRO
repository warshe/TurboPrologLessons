Domains
	ilist=integer*
Predicates
	sumlist(ilist,integer)
Clauses
	sumlist([X|[]],X).
	sumlist([X|Xs],Z):-sumlist(Xs,Y),Z=X+Y.