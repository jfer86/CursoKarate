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
