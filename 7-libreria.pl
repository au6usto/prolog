producto(cuaderno,30).
producto(lapiz,10).
producto(goma,8).
producto(compaz,25).

compra(marta,producto(cuaderno,2)).
compra(marta,producto(lapiz,1)).
compra(jose,producto(compaz,1)).
compra(jose,producto(goma,3)).

sumarLista([],0).
sumarLista([H|T],Total):- sumarLista(T,SubT), Total is H + SubT.

cantidad(Cliente,X):- findall(Cantidad,(compra(Cliente,producto(_,Cantidad)), X is Cantidad),L), sumarLista(L,X).

total(Cliente,X):- findall(Total, (compra(Cliente,producto(Producto,Cantidad)),producto(Producto,Precio), Total is Precio*Cantidad),L), sumarLista(L,X).

detalle(X):- findall((Cliente,Producto,Cantidad,Total),(compra(Cliente,producto(Producto,Cantidad)), producto(Producto,Precio), Total is Cantidad*Precio),X).

