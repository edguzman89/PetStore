Feature: Consumo servicio PUT
  yo como automatizador
  Necesito hacer la actualizacion de unos registro utilizando el metodo PUT
  Para automatizar la peticion

  Background: Set Setting
    * url 'https://petstore.swagger.io/'
    * path "/v2/pet/"
    * def bodyPet = read('../jsons/bodyPet.json')
    * request bodyPet


  Scenario Outline: Modificar una mascota
    When method put
    Then status 200
    And match $.id == <numero_id>
    And match $.name == '<nombre>'

    Examples:

      | numero_id | nombre | status    |
      | 1111      | Robin  | available |
      | 1112      | Ratis  | pending   |
      | 1113      | Luna   | sold      |
      | 1114      | Laika  | sold      |