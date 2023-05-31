:-consult("RestautanTEC-BNF.pl").
:-consult("RestautanTEC-DB.pl").


inicio():-
    header(),
    tipoComida(), %pizza, ensalada, pasta.
    datosPedido(), %napolitana, cesar, raviolis
    tipoRefresco(), %Coca, papaya, horchata, pacha con jet
    lugarHora(), %ubicacion y hora disponibles
    cantidadPersonas(). % reservacion para x personas

header():-
    write("bienvenidos a restauranTEC, su bot de confianza para la recomendacion de los mejores restaurantes del pais.").
    %writeln("Por ejemplo: rapida, italiana, bocas, mexicana, etc...").
    %parsear input de usuario

tipoComida() :-
    %Consulta el tipo de comida que el usuario desea
    nl,
    write('¿Que se te antoja comer? '), 
    read(X),
    %atomic.list.concat(L,' ',X),
    %verificarOracion(X),
    write(X).
datosPedido() :-
    nl,
    write('¿Que tipo de X? '), 
    read(X),
    write(X).

tipoRefresco() :-
    nl,
    write('¿Que tipo de refreso desea? '), 
    read(X),
    write(X).

lugarHora() :-
    nl,
    write('¿A que hora y en que lugar se te antoja comer? '), 
    read(X),
    write(X).

cantidadPersonas() :-
    nl,
    write('¿Para cuantas personas?'), 
    read(X),
    write(X).

%parsear input de usuario


