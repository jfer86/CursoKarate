Feature: to test the get end point of the application

  Background: Setup the base path
    Given url "http://localhost:9897"
    And print "========== This is Background keyword ============"

 #Simple Get request1
  Scenario: Get a user from1
    Given path "/normal/webapi/all"
    When method get
    Then status 200


  Scenario: Get a user path variable
    Given path "/normal/webapi/all"
    When method get
    Then status 200

  Scenario: Get a user xml
    Given path "/normal/webapi/all"
    And header Accept = "application/xml"
    When method get
    Then status 200
    And print response

  Scenario: Get a user json
    Given path "/normal/webapi/all"
    And header Accept = "application/json"
    When method get
    Then status 200
    And match response.[0].jobId == 1
    And match response.[0].experience[1] == "Apple"
    And match response.[0].project[0].projectName == "Movie App"
    And match response.[0].project[0].technology[2] == "Gradle"
    #validate the size of array
    And match response.[0].experience == "#[3]"
    And match response.[0].project[0].technology == "#[3]"
    #using wild card char
    And match response.[0].experience[*] ==["Google", "Apple","Mobile Iron"]
    And match response.[0].project[0].technology[*] ==["Kotlin","SQL Lite","Gradle"]
    #Contains Keyword
    And match response.[0].experience[*] contains ["Mobile Iron","Apple"]
    And match response.[0].project[0].technology[*] contains ["SQL Lite"]
    And match response.[*].jobId contains 1

  Scenario: Get a user using fuzzy matcher
    Given path "/normal/webapi/all"
    And header Accept = "application/json"
    When method get
    Then status 200
    And match response.[0].jobId == "#present"
    And match response.[0].experience[1] == "#not null"
    And match response.[0].project[0].projectName == "#ignore"
    And match response.[0].project[0].technology == "#array"
    And match response.[0].jobTitle == "#string"
    And match response.[0].jobId == "#number"






