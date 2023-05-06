Feature: Validar metodo get

  Background:
    * url baseUrl
    * def createUserResult = call read('createUser.feature')
    * def id = createUserResult.id
    * def name = createUserResult.name
    * path '/pet/' + id

  Scenario: Validar metodo get
    Given method get
    When status 200
    And match response.id == id
    And match response.name == name
    * def idNew = response.id




