Feature: Actuaizar el registro

  Background:
    * url baseUrl
    * path '/pet'
    * def getUser = call read('get-request.feature')
    * def id = getUser.idNew
    * def DemoClass = Java.type('Example.RandomGenerator')
    * def name = DemoClass.randomDogName()
    * def requestPost = read('request.json')

  Scenario: Actualizar el registro
    Given request requestPost
    When method put
    Then status 200
    And match response.id == id
    And match response.name == name
    * def newId = response.id
    * print newId