Feature: to create job entry in the application

  Background: Create and initialize base url
    Given url "http://localhost:9191"

  @Post
  Scenario: To create job entry in json format
    * def requestBody = read("classpath:src/test/java/jobEntry.json")
    Given path "normal/webapi/add"
    And request body
    And headers {Accept: "application/json", Content-Type: "application/json"}
    When method post
    And status 201
    And match response == body
