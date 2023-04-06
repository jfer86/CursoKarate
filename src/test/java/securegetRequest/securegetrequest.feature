Feature: To access the Get end point witch is secure Basic Authentication

  Background: Setup the base path
    * url 'http://localhost:9897'
    * configure headers = { Accept : 'application/json' }

  Scenario: To access the Get end point witch basic auth
    Given path '/secure/webapi/all'
    And header Authorization = 'Basic YWRtaW46d2VsY29tZQ=='
    When method GET
    Then status 200
    And match response == '#notnull'


  Scenario: To access the Get end point witout basic auth
    Given path '/secure/webapi/all'
    When method GET
    Then status 401
    And match response == '#notnull'

  Scenario: To access the Get end point with non-existing user
    Given path '/secure/webapi/all'
    And header Authorization = 'Basic YWRtaW46d2VsY29tZTE='
    When method GET
    Then status 401
    And match response == '#notnull'

  Scenario: To access the Get end point witch basic auth via js function
    Given path '/secure/webapi/all'
    * def auth = call read('../basicAuth.js') {username: 'admin', password: 'welcome'}
    And print "This is the auth ==> ", auth
    And header Authorization = 'Basic YWRtaW46d2VsY29tZQ=='
    When method GET
    Then status 200
    And match response == '#notnull'

