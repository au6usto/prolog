invitado(jose,m,33).
invitado(homero,m,37).
invitado(bart,m,10).
invitado(lisa,f,9).
invitado(marge,f,33).
invitado(eli,f,73).

comemucho(S,E) :- S==m , E>=18.
comepoco(S,E) :- S==f ; E<18.

carnexpers(P,K) :- invitado(P,S,E),comemucho(S,E),K is 1.
carnexpers(P,K) :- invitado(P,S,E),comepoco(S,E),K is 0.5.

totalconfirm([],0).
totalconfirm([H|T],N) :- carnexpers(H,K),totalconfirm(T,N0),N is N0 + K.

asadomujeres(T) :- findall(X, invitado(X,f,_), L), totalconfirm(L,T).
vienentodos(T) :-  findall(X, invitado(X,_,_), L), totalconfirm(L,T).