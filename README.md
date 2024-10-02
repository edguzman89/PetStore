# Automatizando pruebas API RESTful usando Swagger Petstore

## Descripción del Proyecto
Este proyecto consiste en automatizar pruebas de la API pública de Swagger Petstore, la cual gestiona información relacionada con mascotas. Las pruebas automatizadas validan diferentes flujos y operaciones de la API, como la creación, consulta, modificación y eliminación de mascotas.

## Tecnologías Utilizadas
El desarrollo del proyecto se realizó utilizando las siguientes herramientas:
- **Karate Framework**: Para la automatización de las pruebas de la API.
- **JMeter**: Para pruebas de carga y rendimiento.
- **Java**: Lenguaje de programación base para la ejecución del proyecto.

## Pre-requisitos
Para ejecutar este proyecto, es indispensable tener instalados los siguientes componentes:
- **Java 8** o superior.
- **Gradle** como gestor de dependencias.

## Instalación
No se requiere configuración adicional.

## Ejecución de Pruebas
Para ejecutar las pruebas, navega a la ruta `test/java/runners/`, donde encontrarás las clases ejecutables. La clase principal para ejecutar todos los métodos es `petstoreRunner.java`. También puedes ejecutar casos de prueba específicos para cada método HTTP.

## Estructura del Proyecto
El proyecto está organizado de la siguiente manera:

- `test/java/runners/`: Contiene las clases ejecutables para ejecutar las pruebas.
- `test/java/resources/features/`: Incluye los archivos de casos de prueba, escritos en formato `.feature` de Karate.
- `test/java/resources/json/`: Aquí se encuentran los archivos JSON necesarios para las pruebas.

## Casos de Prueba Automatizados
Los casos de prueba se han diseñado para cubrir los siguientes métodos:

- **POST**: Se crean 4 registros de mascotas con su `id` y `nombre`.
- **GET**: Dos casos de prueba: 
   - Consulta de mascotas existentes con respuesta esperada de `200 OK`.
   - Consulta de mascotas inexistentes con respuesta esperada de `404 Not Found`.
- **PUT**: Se modifican 4 registros de mascotas previamente creados, cambiando su `nombre` y `status`.
- **DELETE**: Dos casos de prueba:
   - Eliminación de mascotas existentes con respuesta esperada de `200 OK`.
   - Intento de eliminación de mascotas inexistentes con respuesta esperada de `404 Not Found`.

## Contribuciones
No se esperan contribuciones externas en este proyecto.

## Licencia
Este proyecto no cuenta con una licencia específica.
