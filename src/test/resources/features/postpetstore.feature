Feature: Consumo servicio POST
  yo como automatizador
  Necesito hacer la creacion de registros utilizando el metodo POST
  Para automatizar la peticion

  Background: Set Setting
    * url 'https://petstore.swagger.io/'
    * path "/v2/pet/"
    * def bodyPet = read('../jsons/bodyPet.json')
    * request bodyPet

  Scenario Outline: Crear una mascota de manera exitosa
    When method post
    Then status 200
    And match $.id == <numero_id>

    Examples:
    | numero_id | nombre  |
    | 1111      | Pancha  |
    | 1112      | Maya    |
    | 1113      | Samy    |
    | 1114      | Lupe    |