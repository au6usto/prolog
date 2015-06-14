imprime([]).
imprime([H|T]):- print(H), print('\n'), imprime(T).