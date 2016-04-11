/*   Айзикович А.А.,   26.02.92.
     Программа "Вертикальные и горизонтальные отрезки".
     exmpl203.pro                                             */

DOMAINS

  point1 = point(integer,integer)
  mline =  myline(point1,point1)

PREDICATES

  point(integer,integer)
  myline(point1,point1)
  vert(mline)
  gor(mline)

CLAUSES

  point(1,1).
  point(2,3).
  myline(P,Q).
  vert(myline(point(X,Y),point(X,Y1))).
  gor(myline(point(X,Y),point(X1,Y))).

/*
Goal: vert(L)                              L=_
                                           1 Solution
Goal: gor(K)                               K=_
                                           1 Solution
Goal: vert(myline(point(1,1),point(1,2)))  Yes
Goal: vert(myline(point(1,1),point(2,Y)))  No Solution
Goal: gor(myline(point(1,1),point(2,Y)))   Y=1
                                           1 Solution
Goal: vert(myline(point(2,3),P))           P=point(2,_)
                                           1 Solution
Goal: vert(S),gor(S)                       S=myline(point(_,_),
                                             point(_,_))
                                           1 Solution
*/
