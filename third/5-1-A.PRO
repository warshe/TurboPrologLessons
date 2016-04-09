Predicates
	nondeterm times(integer,integer,integer)
Clauses
	times(X,Y,Z):-bound(Y),free(Z),Z=X*Y.
	times(X,Y,Z):-bound(Z),bound(Y),free(Y),Y=Z div X.
	times(X,Y,Z):-bound(Z),free(X),X=Z div Y.
	times(X,Y,Z):-bound(Y),bound(Z),bound(Z),Z=X*Y.