:-consult('RestauranTEC-ID.pl').
:-consult('RestauranTEC-BNF.pl').


inicio():-
    header(),
    usuario_input,
    usuario_input_aux(). 
    

header():-
    nl,write("Bienvenidos a RestauranTEC, su bot de confianza para la recomendacion de los mejores restaurantes del pais."),nl,nl,
    nl,write('¿Quieres una recomendacion o tienes algo en mente?'),
    nl.

/*inicia la conversacion con el chat de recomendaciones. recibe un string del usuario
y este se envia al archivo RestauranTEC-ID.pl para que la entrada sea procesada, hay dos caminos que 
el usuario puede elegir, por recomendaciones directas o preguntas aleatorias para generar la recomendacion
mas adecuada.
*/

usuario_input :-
    nl,
    read_line_to_codes(user_input, InputCodes),
    atom_codes(Cadena, InputCodes),string2atomlist(Cadena,O),
    (O = [exit] ->
        write('¡Muchas gracias por utilizar nuestro programa de rescomedaciones!'), nl, % Mensaje de salida opcional
        halt % Terminar el programa
    ;
        (validacion(O) ->
            analizar_input(Cadena),
            usuario_input
        ;
            write('Gramatica incorrecta! Consulta el manual para seguir utilizando el Chat'),
            usuario_input
        )
    ).


