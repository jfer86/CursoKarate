Feature: To upload the file using the karate framework

  Background: Setup the base path
    Given url 'http://localhost:9897'

  Scenario:To upload the in the test application
    Given path '/normal/webapi/upload'
    And multipart file file = { read: 'fileToUpload.txt', filename: 'fileToUpload.txt', Content-type: 'multipart/form-data' }
    When method post
    Then status 200
    And print response

  Scenario:To upload the in the test application with json data
    Given path '/normal/webapi/upload'
    * def fileLocation = '../jobEntry.json'
    And multipart file file = { read: '#(fileLocation)', filename: 'jobEntry.json', Content-type: 'multipart/form-data' }
    When method post
    Then status 200
    And print response
    And match responde.message contains 'jobEntry.json'