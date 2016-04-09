Predicates
	minimum(integer,integer,integer)
Clauses
	minimum(X,Y,Y):-X>=Y.
	minimum(X,Y,X):-X<Y.