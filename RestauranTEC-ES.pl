:-consult('RestauranTEC-ID.pl').


inicio():-
    header(),
    usuario_input(Cadena),
    usuario_input_aux(). 
    

header():-
    write("bienvenidos a restauranTEC, su bot de confianza para la recomendacion de los mejores restaurantes del pais.").

/*inicia la conversacion con el chat de recomendaciones. recibe un string del usuario
y este se envia al archivo RestauranTEC-ID.pl para que la entrada sea procesada, hay dos caminos que 
el usuario puede elegir, por recomendaciones directas o preguntas aleatorias para generar la recomendacion
mas adecuada.
*/

usuario_input(Cadena) :-
    nl,
    write('¿Quieres una recomendacion o tienes algo en mente?'),
    read_line_to_codes(user_input, InputCodes),
    atom_codes(Cadena, InputCodes),
    (miembro("recomendacion", Cadena)->
            recomendar();
            analizar_input(Cadena)),
            usuario_input_aux().

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


