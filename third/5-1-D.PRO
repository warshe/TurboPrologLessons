Domains
	ilist=integer*
Predicates
	orderlist(ilist)
Clauses
	orderlist([X|[]]).
	orderlist([X,Y|XYs]):-X<=Y,orderlist([Y|XYs]).