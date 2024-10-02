Feature: Consumo servicio DELETE
  yo como automatizador
  Necesito hacer el borrado de unos registro utilizando el metodo DELETE
  Para automatizar la peticion

  Background: Set Setting
    * url 'https://petstore.swagger.io/'
    * path "/v2/pet/" + id_mascota

  Scenario Outline: Borrar mascotas
    When method delete
    Then status 200

    Examples:
      | id_mascota  |
      | 1111        |
      | 1112        |
      | 1113        |
      | 1114        |

  Scenario Outline: Borrar mascotas que no han sido creadas
    When method delete
    Then status 404

    Examples:
      | id_mascota  |
      | 2222        |
      | 2223        |