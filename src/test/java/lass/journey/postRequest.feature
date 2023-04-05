Feature: example journey

  Background: example journey
    * def postResponse = call read('classpath:lass/servicepath/post-user.feature@Post')
    * def jobId = $postResponse.response.jobId
    * print 'this jobId',jobId

    Scenario:
      Given print jobId

