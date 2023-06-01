<<<<<<< Updated upstream
:-consult("RestautanTEC-BNF.pl").
:-consult("RestautanTEC-DB.pl").

inicio():-header(), datosUsuario().

header():-write("Bienvenidos a RestauranTEC, su bot de confianza para la recomendación de los mejores restaurantes del país.")

datosUsuario(Restaurante, TipoComida, Comida, Sabor, Lugar):-
    %Consulta el tipo de comida que el usuario desea
nl, writeln('¿Qué tipo de comida desea comer?'),nl,nl, writeln("Por ejemplo: rapida, italiana, bocas, mexicana, etc...").

%parsear input de usuario
=======
:-consult('RestauranTEC-ID.pl').
:-consult('RestauranTEC-BNF.pl').


inicio():-
    header(),
    usuario_input,
    usuario_input_aux(). 
    

header():-
    write("bienvenidos a restauranTEC, su bot de confianza para la recomendacion de los mejores restaurantes del pais.").

/*inicia la conversacion con el chat de recomendaciones. recibe un string del usuario
y este se envia al archivo RestauranTEC-ID.pl para que la entrada sea procesada, hay dos caminos que 
el usuario puede elegir, por recomendaciones directas o preguntas aleatorias para generar la recomendacion
mas adecuada.
*/

usuario_input :-
    nl,
    write('¿Quieres una recomendacion o tienes algo en mente?'), nl,
    read_line_to_codes(user_input, InputCodes),
    atom_codes(Cadena, InputCodes),string2atomlist(Cadena,O),
    validacion(O),!;
    
    (miembro("recomendacion", Cadena)->
            recomendar;
            %meter parte de sebas
            analizar_input(Cadena)),
            usuario_input_aux(),
    miembro("exit", Cadena), halt.
    

/*En caso de que el usuario decida hacer preguntas aleatorias u oraciones en busca de 
infomacion o recomendaciones se necesita una conversacion continua, para ello 
usuario_input_aux() genera una llamda recursiva.

*/

usuario_input_aux() :-
    nl,
    read_line_to_codes(user_input, InputCodes),
    atom_codes(Cadena, InputCodes),
    analizar_input(Cadena), nl,
    usuario_input_aux().
>>>>>>> Stashed changes


