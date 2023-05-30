:-include('RestauranTEC-DB.pl').

%verificar si una palabra pertenece a una cadena
miembro(Palabra, Cadena) :-
    sub_atom(Cadena, _, _, _, Palabra).

%Mostrar tipos de comida
analizar_input(Input) :-
    miembro("tipos de comida", Input),
    listaTiposComida(Tipos),
    write(Tipos), nl.

%Mostrar todos los restaurantes
analizar_input(Input) :-
    miembro("todos", Input),
    miembro("restaurantes", Input),
    listaRestaurantes(Restaurantes),
    write(Restaurantes), nl.

%Analizar segun el tipo de comida -> dar opciones de restaurantes del tipo
analizar_input(Input) :-
    miembro("restaurantes", Input),
    miembro(Tipo, Input), 
    restaurante([Restaurante, Tipo, _, _, _]),
    write(Restaurante), nl. 

%Analizar segun restaurante -> mostrar menu
analizar_input(Input) :-
    miembro("menu", Input),
    restaurante([Restaurante, _, _, _, _]), %verificar que el restaurante esta en la base de datos
    sub_string(Input, _, _, _, Restaurante),
    mostrar_menu(Restaurante).

%Mostrar el menu de un restaurante
mostrar_menu(Restaurante) :-
    menu(Tipo, Restaurante, Platos),
    format("Menu de ~w:\n", [Restaurante]),
    format("~w:\n", [Tipo]),
    mostrar_platos(Platos).

%Mostrar platos 
mostrar_platos([]).
mostrar_platos([Plato|Platos]) :-
    format("- ~w\n", [Plato]),
    mostrar_platos(Platos).

%Analizar segun la comida especifica ->mostrar restaurantes que ofrecen esa comida
analizar_input(Input) :-
    miembro("restaurantes", Input),
    miembro(Plato, Input),
    menu(Plato, Restaurante, _), 
    write(Restaurante), nl. 

%Analizar segun la provincia ->mostrar restaurantes que estan en esa provincia 
analizar_input(Input) :-
    restaurante([Restaurante, _, [Provincia|_], _, _]),
    sub_string(Input, _, _, _, Provincia),
    write(Restaurante),nl.

%Analizar segun restaurante -> mostrar disposiciones 
analizar_input(Input) :-
    miembro("disposiciones", Input),
    restaurante([Restaurante, _, _, Capacidad, Disposicion]), %verificar que el restaurante esta en la base de datos
    sub_string(Input, _, _, _, Restaurante),
    write(Disposicion), nl.

%Analizar segun restaurante -> mostrar capacidad
analizar_input(Input) :-
    miembro("capacidad", Input),
    restaurante([Restaurante, _, _, Capacidad, _]),
    sub_string(Input, _, _, _, Restaurante),
    write("Capacidad: "), write(Capacidad), nl.

%Analizar segun restaurante -> mostrar direccion 
analizar_input(Input) :-
    miembro("direccion", Input),
    restaurante([Restaurante, _, Direccion, _, _]), 
    sub_string(Input, _, _, _, Restaurante),
    write(Direccion), nl.

analizar_input(Input) :-
    miembro("sabores", Input),
    miembro(Plato, Input),
    miembro(Restaurante, Input),
    menu(Plato, Restaurante, Sabores),
    write(Sabores), nl.















