#Intro to MVC (modelo, vista, controlador)

#Modelo (la lógica del negocio está en el modelo)
#Patrón de diseño de software para separar las responsabilidades dentro del programa
#La lógica de negocio es el comportamiento del programa y cómo se relacionan tus datos; los modelos estarían en la carpeta /lib
# cualquier cosa que diga cómo tus clases actúan // recogen y manipulan los datos
# Desde el modelo hay que llamar a los modelos.

#Vistas: se encargan de representar los datos (ya sea en pantalla como en archivo de texto... json, xml)
#En la vista sólo debería haber la lógica justa para saber que es lo que tiene que representar
#No debería haber procesado de datos//lógica en las vistas

#Todas las peticiones van al routing primero, luego al controlador y este decide donde enviarlo

#Controlador:
#Son los coordinadores de este patron de diseño
#Son los encargados de designar que modelos se encargan de gestionar los datos y determinar que vista se encargará de 
#representar los datos. Son los mensajeros o directores de orquesta. Pasan datos de un sitio a otro. No debería haber mucha lógica en ellos

#MVC se emplea para tener el código más ordenado // separación de conceptos