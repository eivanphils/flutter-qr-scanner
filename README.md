## Flutter QR Scanner

Esta es una aplicación que permitirá usar un lector de códigos qr para poder almacenarlos en SQlite siguiendo el cursor de Fernando Herrera [https://www.udemy.com/course/flutter-ios-android-fernando-herrera/.](https://www.udemy.com/course/flutter-ios-android-fernando-herrera/.) El proposito final es aprender a desarrollar aplicaciones móviles con Flutter y poder desplegarlas en sus respectivas tiendas. 

---

## Levantar el proyecto

Puede levantar el proyecto con visual studio code ejecutando comand + shift + P. Luego "Select Device".

<img src="https://github.com/eivanphils/flutter-app-counter/blob/master/assets/select_device.png" width="500">     

Luego abre el archivo main.dart y presiona F5 o fn + F5 app. 


**Nota**: es importante tener instalado todas las configuraciones necesarias para flutter

[https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)

## Descripción

### La app contiene alguno de estos puntos:

-Abrir la cámara y leer un código QR

-Guardar en SQLite la información del QR

-CRUD hacia SQLite 

-Cargar mapas segun coordenadas dadas

-Agregar marcadores en el mapa

-Abrir URLs en el navegador


## Paquetes de terceros

En el proyecto se han utilizado algunos paquetes de terceros que fueron de mucha ayuda para la construcción final.

A continuación encontrará la información sobre estos paquetes.

| Paquete    | Explicación |
| ------------- |:-------------:|
| cupertino_icons  | Iconos de cupertino |

## Estructura de directorio

| Directorio    | Explicación |
| ------------- |:-------------:|
| assets  | Contiene todas las imagenes png, svg o gif |
| android, ios, web | Contiene todas las configuraciones de la plataforma que genera flutter automáticamente |
| lib     | Contiene toda la lógica de la aplicación |

Luego el directorio lib

| Directorio    | Explicación |
| ------------- |:-------------:|
| helpers   | Contiene configuraciones de funciones de uso común |
| models    | Contiene todas las clases que representan el modelo de un objeto como películas, actor, respuestas de peticiones |
| providers | Contiene todas los providers donde se realizan las peticiones http |
| router    | Contiene todas las configuraciones de las rutas de la aplicación |
| screens   | Contiene todas las clases de cada pantalla de la app |
| theme     | Contiene todas las configuraciones del tema de la app |
| widgets   | Contiene todos los  widgets personalizados que se reutilizan en distintas secciones de la app |


## Capturas de pantalla

<img src="https://github.com/eivanphils/flutter-xtream-movies/blob/master/assets/screenshoots/1.png" width="200">   
