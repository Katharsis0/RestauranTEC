:- include('RestauranTEC-DB.pl').


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
    (miembro("restaurantes", Input); miembro("quiero", Input)),
    miembro(Tipo, Input), 
    restaurante([Restaurante, Tipo, _, _, _]),
    write("Te ofrecemos el restaurante "), write(Restaurante), nl.

%Analizar segun restaurante -> mostrar menu
analizar_input(Input) :-
    miembro("menu", Input),
    restaurante([Restaurante, _, _, _, _]), %verificar que el restaurante esta en la base de datos
    sub_string(Input, _, _, _, Restaurante),
    mostrar_menu(Restaurante).

%Analizar segun la comida especifica ->mostrar restaurantes que ofrecen esa comida
analizar_input(Input) :-
    (miembro("restaurantes", Input); miembro("quiero", Input)),
    miembro(Plato, Input),
    menu(Plato, Restaurante, _), 
    write("Te ofrecemos el restaurante "), write(Restaurante), nl.

%Analizar segun la provincia ->mostrar restaurantes que estan en esa provincia 
analizar_input(Input) :-
    restaurante([Restaurante, _, [Provincia|_], _, _]),
    sub_string(Input, _, _, _, Provincia),
    write("Te ofrecemos el restaurante "), write(Restaurante),nl.

%Analizar segun restaurante -> mostrar disposiciones 
analizar_input(Input) :-
    miembro("disposiciones", Input),
    restaurante([Restaurante, _, _, _, Disposicion]), %verificar que el restaurante esta en la base de datos
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
    (miembro("direccion", Input), miembro("donde", Input)),
    restaurante([Restaurante, _, Direccion, _, _]), 
    sub_string(Input, _, _, _, Restaurante),
    write(Direccion), nl.

%Analizar segun plato y restaurante -> mostrar sabores
analizar_input(Input) :-
    miembro("sabores", Input),
    miembro(Plato, Input),
    miembro(Restaurante, Input),
    get_sabores(Plato, Restaurante).


%Desea una recomendacion
recomendar :-
    write("Claro! ¿Que tipo de comida desea comer? Ofrecemos las siguientes opciones: "), nl,
    analizar_input("tipos de comida"),
    read(Tipo),

    %condicional para verificar validez del write

    write("¿En que zona desea comer? "), nl,
    read(Provincia),

    write("Le recomendamos los siguientes restaurantes. ¿Cual de ellos le gustaria? "), nl,
    get_restaurantes(Tipo, Provincia),
    read(Restaurante),

    write("A continuacion le indicamos la direccion exacta de ese restaurante: "),
    get_direccion(Restaurante),
    nl,

    write("Ese restaurante ofrece los siguientes platillos. ¿Cual de ellos desea ordenar? "), nl,
    get_platillos(Restaurante),
    read(Platillo),

    write("Para ese platillo, "), write(Restaurante), write(", ofrece los siguientes sabores. ¿Cual de ellos prefiere? "), nl,
    get_sabores(Platillo, Restaurante),
    read(Sabor),

    write("¿Cuantas unidades de "), write(Platillo), write(" con sabor "), write(Sabor), write("?"), nl,
    read(Unidades),
    write("Perfecto, "), write(Unidades), write(" de "), write(Platillo), write(Sabor), write("anotado!"),

    write("¿Desea algo mas? A continuacion le mostramos el menu de "), write(Restaurante), nl,
    mostrar_menu(Restaurante),
    read(Extra),
    (miembro("si", Extra) -> 
        (write("Listo, lo hemos agregado a su orden"));
        (miembro("no", Extra) -> 
            (write("Pedido realizado!"), get_disposiciones(Restaurante), write(" Gracias por contar con RestauranTEC")))
    ).


%Mostrar restaurantes en una provincia y segun un tipo de comida
get_restaurantes(Tipo, Provincia) :-
    restaurante([Restaurante, Tipo, [Provincia|_], _, _]),
    write(Restaurante), nl.

%Mostrar platillos de un restaurante
get_platillos(Restaurante) :-
    menu(Platillo, Restaurante, _),
    write(Platillo), nl.

get_sabores(Platillo, Restaurante) :-
    menu(Platillo, Restaurante, Sabores),
    write(Sabores), nl.

get_disposiciones(Restaurante) :-
    restaurante([Restaurante, _, _, Capacidad, Disposicion]), 
    write("Capacidad del restaurante: "), write(Capacidad), nl,
    write(Disposicion), nl.

get_direccion(Restaurante) :-
    restaurante([Restaurante, _, Direccion, _, _]), 
    write(Direccion), nl.

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















