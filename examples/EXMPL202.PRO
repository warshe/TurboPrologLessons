/*   Айзикович А.А., ИМИ МК, 26.02.92.
     Программа  "Дата".
     Литература: Братко Н. Программирование на языке Пролог
                 для искуственного интеллекта.
                 - М.: Мир, 1990. - 560 с.
     exmpl202.pro                                        */

PREDICATES

  data(integer,symbol,integer)

CLAUSES

  data(1,may,1983).
/* --------------------------------------------------
Goal: data(D,M,1983),data(D1,may,Y1)
D=1, M=may, D1=1, Y1=1983
1 Solution

Goal: data(Day,may,1983),data(1,may,1983)
Day=1
1 Solution

Goal: data(Day,may,1983)
Day=1
1 Solution

Goal: data(1,may,1983)
Yes

Goal: data(D,may,1983)
D=_
1 Solution
----------------------------------------------------- */
/*
CLAUSES

  data(Day,may,1983).

Goal:data(D,M,1983),data(D2,may,1983)
D=_, M=may, D2=_
1 Solution
*/
