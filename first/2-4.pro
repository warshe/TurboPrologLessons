Domains 
	lst = symbol*
Predicates
	count(lst,integer)
Clauses 
	Count([],0).
	count([X|Xs],Y):-count(Xs,Z),Y=Z+1.