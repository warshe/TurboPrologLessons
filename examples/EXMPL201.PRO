/*   Айзикович А.А., ИМИ МК, 18.02.92.
     Программа  "Родственные отношения (иметь ребенка)".
     Литература: Братко Н. Программирование на языке Пролог
                 для искуственного интеллекта.
                 - М.: Мир, 1990. - 560 с.
     exmpl201.pro                                             */

PREDICATES

   parent(symbol,symbol)
   has_child(symbol)

CLAUSES

   parent(tom,bob).
   has_child(X):-parent(X,_).

/* -------------------------------------------

Goal: has_child(X)
X=tom
1 Solution

Goal: has_child(_)
Yes

Goal: parent(X,Y)
X=tom, Y=bob
1 Solution

Goal: parent(X,_)
X=tom
1 Solution

Goal: parent(_,Y)
Y=bob
1 Solution
--------------------------------------------------- */

