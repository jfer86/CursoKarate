Feature: to test the get end point of the application

  Background: Setup the base path
    Given url "http://localhost:9897"


 #Simple Get request1
  Scenario: To get the data in Json format and validate from file
    Given path "/normal/webapi/all"
    When method get
    Then status 200
    #create a variable to store teh data from external file
    * def actualResponse = read("JsonResponse.json")
    And print "File ==> ", actualResponse
    And match response == actualResponse




