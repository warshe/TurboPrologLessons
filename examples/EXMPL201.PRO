/*   ��������� �.�., ��� ��, 18.02.92.
     �ணࠬ��  "����⢥��� �⭮襭�� (����� ॡ����)".
     �������: ��⪮ �. �ணࠬ��஢���� �� �몥 �஫��
                 ��� ����⢥����� ��⥫����.
                 - �.: ���, 1990. - 560 �.
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

