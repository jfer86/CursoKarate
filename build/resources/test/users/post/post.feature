Feature: post API Demonstratio

#simple post request
  Scenario: post demo 1
    Given url 'https://reqres.in/api/users'
    And request { "name": "juan", "job": "QA" }
    When method POST
    Then status 201
    And print response

    #simple post request
  Scenario: post demo 1

    ## q: como creo un metodo get en karate framework
    ## r: con el metodo get
    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200
    And print response

    ## q: como creo un metodo post en karate framework
    ## r: con el metodo post
    Given url 'https://reqres.in/api/users'
    And request { "name": "jose", "job": "QA" }
    When method POST
    Then status 201
    And print response

    ## q: como creo un metodo put en karate framework
    ## r: con el metodo put
    Given url 'https://reqres.in/api/users/2'
    And request { "name": "juan", "job": "QA" }
    When method PUT
    Then status 200
    And print response
