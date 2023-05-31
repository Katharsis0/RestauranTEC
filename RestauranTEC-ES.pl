:-consult('RestauranTEC-ID.pl').


inicio():-
    header(),
    usuario_input(Cadena). %pizza, ensalada, pasta.
    

header():-
    write("bienvenidos a restauranTEC, su bot de confianza para la recomendacion de los mejores restaurantes del pais.").
    %writeln("Por ejemplo: rapida, italiana, bocas, mexicana, etc...").
    %parsear input de usuario

usuario_input(Cadena) :-
    nl,
    write('¿Quieres una recomendacion o tienes algo en mente?'),
    read_line_to_codes(user_input, InputCodes),
    atom_codes(Cadena, InputCodes),
    (miembro("recomendacion", Cadena)->
            recomendar();
            analizar_input(Cadena)).


