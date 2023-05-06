Feature: crear un nuevo registro

  Background:
    * url baseUrl
    * path '/pet'
    * def DemoClass = Java.type('Example.RandomGenerator')
    * def name = DemoClass.randomDogName()
    * def id = DemoClass.randomNumericID()
    * def requestPost = read('request.json')

  Scenario: Crear un nuevo registro
    Given request requestPost
    When method post
    Then status 200
    * def id = response.id
    * def name = response.name
    * print id
    * print name

