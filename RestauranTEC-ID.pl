:-include('RestauranTEC-DB.pl').

miembro(Palabra, Cadena) :-
    sub_atom(Cadena, _, _, _, Palabra).

%Mostrar tipos de comida
analizar_input(Input) :- %falta eliminar los que se repiten
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
    menu(Plato, Restaurante, _), % Obtener el menú del restaurante
    write(Restaurante), nl. % Mostrar el plato del menú








