Feature: Consumo servicio GET
  yo como automatizador
  Necesito hacer una consulta de mascotas utilizando el metodo GET
  Para automatizar la peticion

  Background: Set Setting
    * url 'https://petstore.swagger.io/'
    * path "/v2/pet/" + id_mascota

  Scenario Outline: Consultar mascotas existentes
    When method get
    Then status 200

    Examples:
    | id_mascota  |
    | 1111        |
    | 1112        |
    | 1113        |
    | 1114        |

  Scenario Outline: Consultar mascota que no han sido creadas por ID
    When method get
    Then status 404

    Examples:
    | id_mascota  |
    | 2222        |
    | 2223        |

