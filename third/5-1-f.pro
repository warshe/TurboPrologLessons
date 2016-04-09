Predicates
	gcd(integer,integer,integer)
Clauses
	gcd(X,X,X).
	gcd(X,Y,D):-X<Y,Z=Y-X,gcd(Z,X,D).
	gcd(X,Y,D):-X>Y,gcd(Y,X,D).