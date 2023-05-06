Feature: To test the patch endpoint for updating the job description

Background: Create and initialize base url
    Given url "http://localhost:9897"
    * def getRandomValue = function() { return Math.floor((100)* Math.random())}
    * def createJobId = getRandomValue()
    * def createJob = call read("../putrequest/createJobEntryWithVariables.feature") {_url: 'http://localhost:9897',_path:'/normal/webapi/add', _id: '#(createJobId)'}
    * def jobDes = 'To develop andriod application and web application'

Scenario: To get the data using query parameter with valid id
    Given path '/normal/webapi/update/details'
    And params {id : '#(createJobId)', jobTitle : 'Software Engg - 2', jobDescription : '#(jobDes)'}
    And headers {Accept:'application/json'}
    And request {}
    When method patch
    Then status 200
    And match response.jobDescription == jobDes	

Scenario: To get the data using query parameter with non-exiting job id
    Given path '/normal/webapi/update/details'
    And params {id : '564564', jobTitle : 'Software Engg - 2', jobDescription : '#(jobDes)'}
    And headers {Accept:'application/json'}
    And request {}
    When method patch
    Then status 404


Scenario: To get the data using query parameter without job title
    Given path '/normal/webapi/update/details'
    And params {id : '#(createJobId)', jobDescription : '#(jobDes)'}
    And headers {Accept:'application/json'}
    And request {}
    When method patch
    Then status 400

    