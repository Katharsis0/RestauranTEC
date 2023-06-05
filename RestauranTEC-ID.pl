:-include('RestauranTEC-DB.pl').
:-consult('RestauranTEC-BNF.pl').

%Verificar si una palabra pertenece a una cadena
miembro(Palabra, Cadena) :-
    sub_atom(Cadena, _, _, _, Palabra).

analizar_input(Input) :-
    miembro("recomendacion", Input),
    recomendar, !.

/*Analizar_input(Input) :-
    miembro("exit", Input), 
    write("Un gusto atenderte, EXIT."), halt.*/

analizar_input(Input) :-
    miembro("algo en mente", Input),
    write("Perfecto! Dime, en que te puedo ayudar?"), !.

%Mostrar todos los tipos de comida
analizar_input(Input) :-
    miembro("tipos de comida", Input),
    listaTiposComida(Tipos),
    write(Tipos), nl, !.

%Mostrar todos los restaurantes
analizar_input(Input) :-
    miembro("todos", Input),
    miembro("restaurantes", Input),
    listaRestaurantes(Restaurantes),
    mostrar_lista(Restaurantes),nl, !.

%Analizar segun restaurante -> mostrar capacidad
analizar_input(Input) :-
    miembro("capacidad", Input),
    restaurante([Restaurante, _, _, Capacidad, _]),
    sub_string(Input, _, _, _, Restaurante),
    write("Capacidad: "), write(Capacidad), nl, !.

%Analizar segun restaurante -> mostrar direccion 
analizar_input(Input) :-
    (miembro("direccion", Input); miembro("donde", Input); miembro("ubicacion", Input)),
    restaurante([Restaurante, _, Direccion, _, _]), 
    sub_string(Input, _, _, _, Restaurante),
    write(Direccion), nl, !.

%Analizar segun plato y restaurante -> mostrar sabores
analizar_input(Input) :-
    miembro("sabores", Input),
    miembro("en", Input),
    menu(Plato, Restaurante, _),
    sub_string(Input, _, _, _, Plato),
    sub_string(Input, _, _, _, Restaurante),
    show_sabores(Plato, Restaurante), !.

%Analizar segun el tipo de comida -> dar opciones de restaurantes del tipo
analizar_input(Input) :-
    restaurante([_, Tipo, _, _, _]),
    sub_string(Input, _, _, _, Tipo),
    findall(Restaurante, restaurante([Restaurante, Tipo, _, _, _]), Restaurantes),
    write("Te ofrecemos los siguientes restaurantes: "), nl, 
    mostrar_lista(Restaurantes), !.

%Analizar segun restaurante -> mostrar menu
analizar_input(Input) :-
    miembro("menu", Input),
    restaurante([Restaurante, _, _, _, _]), %verificar que el restaurante esta en la base de datos
    sub_string(Input, _, _, _, Restaurante),
    show_menu(Restaurante), !.

%Analizar segun la comida especifica/ platillos ->mostrar restaurantes que ofrecen esa comida
analizar_input(Input) :-
    menu(Plato, _, _), 
    miembro(Plato, Input),
    findall(Restaurante, menu(Plato, Restaurante, _), Restaurantes),
    write("Te ofrecemos los siguientes restaurantes: "), nl,
    mostrar_lista(Restaurantes), !.

%Analizar segun la provincia ->mostrar restaurantes que estan en esa provincia 
analizar_input(Input) :-
    restaurante([_, _, [Provincia|_], _, _]),
    sub_string(Input, _, _, _, Provincia),
    findall(Restaurante, restaurante([Restaurante, _, [Provincia|_], _, _]), Restaurantes),
    mostrar_lista(Restaurantes), !.

%Analizar segun restaurante -> mostrar disposiciones 
analizar_input(Input) :-
    miembro("disposiciones", Input),
    restaurante([Restaurante, _, _, _, Disposicion]), %verificar que el restaurante esta en la base de datos
    sub_string(Input, _, _, _, Restaurante),
    write(Disposicion), nl, !.

analizar_input(Input) :-
    write("Lo siento, no entiendo que quieres decir con "), write(Input), 
    write("Por favor ingresa una opcion valida"), nl, !.

%Si el usuario desea una recomendacion, inicia un chat de preguntas
recomendar :-
    write("Claro! ¿Que tipo de comida desea comer? Ofrecemos las siguientes opciones: "), nl,
    analizar_input("tipos de comida"), %mostrar al usuario todos los tipos de comida
    get_tipo.

recomendar :-
    write("Lo sentimos tu respuesta no es valida").

validar(Input) :-
    string2atomlist(Input, InputList),
    validacion(InputList).
    
%Valida el tipo de comida y pregunta la zona
get_tipo :-
    read_line_to_codes(user_input, IC), %IC= input codes
    atom_codes(Input, IC),
    validar(Input),
    (miembro(Tipo, Input), restaurante([_, Tipo, _, _, _]) ->
        write("¿En que zona desea comer? Para ese tipo de comida ofrecemos los siguientes lugares: "), nl,
        show_provincias(Tipo),
        read_line_to_codes(user_input, ICP),
        atom_codes(Provincia, ICP),
        validar(Provincia),
        get_provincia(Provincia, Tipo); 
        (write('El tipo de comida que ingreso no es valido. Por favor, intente nuevamente.'), nl, get_tipo)).

%Valida la zona y pregunta el restaurante
get_provincia(Input, Tipo) :-
    (restaurante([_, _, [Provincia|_], _, _]), sub_string(Input, _, _, _, Provincia) ->
        write("Le recomendamos los siguientes restaurantes: "), nl,
        show_restaurantes(Tipo, Provincia),
        write(" ¿Cual de ellos le gustaria? "), nl,
        read_line_to_codes(user_input, ICR),
        atom_codes(Restaurante, ICR),
        validar(Restaurante),
        get_restaurante(Restaurante); 
        (write('La zona seleccionada no es valida. Por favor, intente nuevamente.'), nl, 
        read_line_to_codes(user_input, ICP),
        atom_codes(NewProvincia, ICP),
        validar(NewProvincia),
        get_provincia(NewProvincia, Tipo))).

%valida el restaurante y pregunta el platillo
get_restaurante(Input) :-
    (restaurante([Restaurante, _, _, _, _]), sub_string(Input, _, _, _, Restaurante) ->
        write("A continuacion le indicamos la direccion exacta de ese restaurante: "), nl,
        get_direccion(Restaurante),
        write("Ese restaurante ofrece los siguientes platillos:"), nl,
        show_platillos(Restaurante),
        write("¿Cual de ellos desea ordenar? "), nl,
        read_line_to_codes(user_input, IC),
        atom_codes(Platillo, IC),
        validar(Platillo),
        get_platillo(Platillo, Restaurante); 
        (write('El restaurante seleccionado no es valido. Por favor, intente de nuevo.'), nl,
        read_line_to_codes(user_input, ICR),
        atom_codes(NewRestaurante, ICR),
        validar(NewRestaurante),
        get_restaurante(NewRestaurante))).

%valida el platillo y pregunta el sabor
get_platillo(Input, Restaurante) :-
    (miembro(Platillo, Input), menu(Platillo, Restaurante, _) ->
        write("Para ese platillo, "), write(Restaurante), write(", ofrece los siguientes sabores:"), nl,
        show_sabores(Platillo, Restaurante),
        write("¿Cual de ellos prefiere? "), nl,
        read_line_to_codes(user_input, ICR),
        atom_codes(Sabor, ICR),
        validar(Sabor),
        get_sabor(Sabor, Platillo, Restaurante); 
        (write('El platillo seleccionado no esta disponible en este restaurante. Por favor, intente nuevamente.'), nl, 
        read_line_to_codes(user_input, ICPl),
        atom_codes(NewPlatillo, ICPl),
        validar(NewPlatillo),
        get_platillo(NewPlatillo, Restaurante))).

%valida el sabor y pregunta las unidades. Pregunta si el usuario quiere realizar otro pedido. 
get_sabor(Input, Platillo, Restaurante) :-
    (menu(_, _, Sabores), pertenece(Sabor, Sabores), sub_string(Input, _, _, _, Sabor) ->
        write("¿Cuantas unidades de "), write(Platillo), write(" con sabor "), write(Sabor), write("?"), nl,
        read_line_to_codes(user_input, ICU),
        atom_codes(Unidades, ICU),
        write("Perfecto, "), write(Unidades), write(" de "), write(Platillo), write(" "), write(Sabor), write(" anotado! "),nl,

        write("¿Desea algo mas? A continuacion le mostramos el menu de "), write(Restaurante), nl,
        mostrar_menu(Restaurante),
        read_line_to_codes(user_input, ICE),
        atom_codes(Extra, ICE),
        validar(Extra),
        (miembro("si", Extra) -> 
            (write("Que platillo le gustar agregar?"), nl,
            read_line_to_codes(user_input, ICPl),
            atom_codes(Platillo, ICPl),
            validar(Platillo),
            get_platillo(Platillo, Restaurante));
            (miembro("no", Extra) -> 
                (write("Pedido realizado!"), nl, get_disposiciones(Restaurante), write("Gracias por contar con RestauranTEC"), nl))
        );
        (write('El sabor seleccionado no esta disponible en este restaurante. Por favor, intente nuevamente.'), nl, 
        read_line_to_codes(user_input, ICS),
        atom_codes(NewSabor, ICS),
        validar(NewSabor),
        get_sabor(NewSabor, Platillo, Restaurante))).


%Mostrar restaurantes en una provincia y segun un tipo de comida
show_restaurantes(Tipo, Provincia) :-
    findall(Restaurante, restaurante([Restaurante, Tipo, [Provincia|_], _, _]), Restaurantes),
    mostrar_lista(Restaurantes).

mostrar_lista([]).
mostrar_lista([X|Resto]) :-
    write(X), nl,
    mostrar_lista(Resto).

show_provincias(Tipo) :-
    findall(Provincia, restaurante([_, Tipo, [Provincia|_], _, _]), Provincias),
    mostrar_lista(Provincias).

%Mostrar platillos de un restaurante
show_platillos(Restaurante) :-
    findall(Platillo, menu(Platillo, Restaurante, _), Platillos),
    mostrar_lista(Platillos).

%Mostrar sabores de un platillo de un restaurante
show_sabores(Platillo, Restaurante) :-
    menu(Platillo, Restaurante, Sabores),
    write(Sabores), nl.

%Mostrar menu de un restaurante
show_menu(Restaurante) :-
    findall(Platillo-Sabores, menu(Platillo, Restaurante, Sabores), PlatillosConSabores),
    mostrar_menu(PlatillosConSabores).

mostrar_menu([]).
mostrar_menu([Platillo-Sabores|Resto]) :-
    write("Platillo: "), write(Platillo), nl,
    write("Sabores: "), write(Sabores), nl,
    mostrar_menu(Resto).


%Mostrar disposiciones y capacidad de un restaurante
get_disposiciones(Restaurante) :-
    restaurante([Restaurante, _, _, Capacidad, Disposicion]), 
    write("Capacidad del restaurante: "), write(Capacidad), nl,
    write(Disposicion), nl.

%Mostrar direccion de un restaurante
get_direccion(Restaurante) :-
    restaurante([Restaurante, _, Direccion, _, _]), 
    write(Direccion), nl.

string2atomlist(X,L):-atomic_list_concat(L, " ", X).