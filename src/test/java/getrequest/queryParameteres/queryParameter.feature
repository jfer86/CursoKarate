Feature: To test the Get endpoint with query parameter

Background: Create and initialize base url
    Given url "http://localhost:9897"
    * def getRandomValue = function() { return Math.floor((100)* Math.random())}
    * def createJobId = getRandomValue()
    * def createJob = call read("../../putrequest/createJobEntryWithVariables.feature") {_url: 'http://localhost:9897',_path:'/normal/webapi/add', _id: '#(createJobId)'}

Scenario: To get the data using query parameter with valid id
    Given path '/normal/webapi/find'
    And params {id : '#(createJobId)', jobTitle : 'Software Engg - 2'}
    And headers {Accept:'application/json'}
    When method get
    Then status 200
    And match response.jobId == createJobId	

Scenario: To get the data using query parameter with invalid id
    Given path '/normal/webapi/find'
    And params {id : '789651', jobTitle : 'Software Engg - 2'}
    And headers {Accept:'application/json'}
    When method get
    Then status 404