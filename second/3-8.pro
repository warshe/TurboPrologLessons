Domains
	list=integer*
Predicates
	even(list,list)
	count(list,list,list)
Clauses	
	even(X,Y):-count(X,[],Y).
	count([],Y,Y).
	count([X|Xs],B,Y):-X mod 2=0, count(Xs,[X|B],Y).
	count([X|Xs],B,Y):-X mod 2>0, count(Xs,B,Y).
	