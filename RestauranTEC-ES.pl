:-consult('RestauranTEC-ID.pl').
:-consult('RestauranTEC-BNF.pl').


inicio():-
    header(),
    usuario_input. 
    

header():-
    nl,write("Bienvenidos a RestauranTEC, su bot de confianza para la recomendacion de los mejores restaurantes del pais. *Proximamente en Guanacaste y Limon* "),nl,nl,
    nl,write('¿Quieres una recomendacion o tienes algo en mente?'),
    nl.

/*inicia la conversacion con el chat de recomendaciones. recibe un string del usuario
y este se revisa con validacion() en el BNF, si esta comple con la sitaxis se analiza la entrada con analizar_input al
archivo de RestauranTEC-ID para obtener una respuesta, si no cumple se envia un aviso al usuario para que consulte 
con el manual, en caso de que el usuario escriba la palabra 'exit' en la consola este cerrara el programa.
*/

usuario_input :-
    nl,
    read_line_to_codes(user_input, InputCodes),
    atom_codes(Cadena, InputCodes),string2atomlist(Cadena,O),
    (O = [exit] ->
        write('¡Muchas gracias por utilizar nuestro programa de recomedaciones!'), nl, % Mensaje de salida 
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


