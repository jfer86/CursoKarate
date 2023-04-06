Feature: Get user on reqres

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

    #Simple Get request
  Scenario: Get a user from1
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method get
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #Simple Get request1
  Scenario: Get a user from1
    Given url "http://localhost:9191/normal/webapi/all"
    When method get
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #get with bakcground
  Scenario: Get a user from2
    Given path '/users?page=2'
    When method get
    Then status 200
    And print responseStatus

    #get with path,Params
  Scenario: Get a user from3
    Given path '/users'
    And param page = 2
    When method get
    Then status 200
    And print responseStatus
    
    
    #get with Assertions
  Scenario: Get a user from4
    Given path '/users'
    And param page = 2
    When method get
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match $.data[3].id == 10
    And match response.data[4].last_name == 'Edwards'
    
    

