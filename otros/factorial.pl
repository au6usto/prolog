factorial(0,1):- !.
factorial(X,Xf):-
	Y is X-1,
	factorial(Y,Yf),
	Xf is Yf * X.