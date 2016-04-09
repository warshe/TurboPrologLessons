Predicates
	maximum(integer,integer,integer)
Clauses
	maximum(X,Y,Y):-X<=Y.
	maximum(X,Y,X):-X>Y.