Feature: to create job entry in the application

  Background: Create and initialize base url
    Given url "http://localhost:9897"

    Scenario: To create job entry in json format
      And request { "jobId": 5,"jobTitle": "Software Engg - 2","jobDescription": "To develop andriod application","experience": ["Google","Apple","Mobile Iron","Pega"],"project": [{"projectName": "Movie App","technology": ["Kotlin","SQL Lite","Gradle"]}]}
      And headers {Accept: "application/json", Content-Type: "application/json"}
      When method post
      And status 201
      And match response.jobTitle == "Software Engg - 2"

  Scenario: To create job entry in json format
    Given path "normal/webapi/add"
    * def body = read("jobEntry.json")
    And request body
    And headers {Accept: "application/json", Content-Type: "application/json"}
    When method post
    And status 201
    And match response.jobTitle == "Software Engg - 6"

  Scenario: To create job entry in json format embedded expression
    Given path "normal/webapi/add"
    * def getJobId = function() { return Math.floor((100) * Math.random());}
    And request { "jobId": '#(getJobId())',  And headers {Accept: "application/json", Content-Type: "application/json"}
    When method post
    And status 201
    Given path "normal/webapi/add"
