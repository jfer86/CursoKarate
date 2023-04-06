Feature: To test the delete end point

Background:
    * configure url = "http://localhost:9897"
    * configure headers = { Accept : 'application/json' }
    * def getRandomValue = function() { return Math.floor((100)* Math.random())}
    * def createJobId = getRandomValue()
    * def createJob = call read("../putrequest/createJobEntryWithVariables.feature") {_url: 'http://localhost:9897',_path:'/normal/webapi/add', _id: '#(createJobId)'}

Scenario: to delete the job entry from application using job id
    Given path '/normal/webapi/remove/' + createJobId
    When method delete
    Then status 200
    Given path '/normal/webapi/find'
    And params { id : '#(createJobId)', jobTitle: 'Software Engg - 2' }
    When method get
    Then status 404

@smoke
Scenario: To demo request chaining
#Create a new job entry
#Extract the job id from the response
* def jobId = createJob.responseJobId
* def jobTitle = createJob.responseJobTitle

#Patch request
* def jobDes = 'Software Engg - 2'
Given path '/normal/webapi/update/details'
And params {id: '#(jobId)', jobTitle: '#(jobTitle)', jobDescription: '#(jobDes)' }
And request {}
When method patch
Then status 200
* def jobId = response.jobId
* def jobTitle = response.jobTitle

#Get request
Given path '/normal/webapi/find'
And params { id : '#(jobId)', jobTitle: '#(jobTitle)' }
When method get
Then status 200
And match response.jobDescription == jobDes 