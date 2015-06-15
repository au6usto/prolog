p(1,2).
p(4,3).
p(6,3).
p(6,5).

total(Resultado):- findall((X,Y,Z), (p(X,Y),Z is X+Y),Resultado). %resultado es una lista