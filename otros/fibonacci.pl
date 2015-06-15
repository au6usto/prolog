fibonacci(0,0).
fibonacci(1,1).
fibonacci(L,X):- L>1, L1 is L-1, fibonacci(L1,X1),
				 L2 is L-2, fibonacci(L2,X2), X is X1+X2.
