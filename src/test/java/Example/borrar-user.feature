Feature: Borrar un registro

  Background:
    * def updateUser = call read('update-user.feature')
    * def idDelete = updateUser.newId
    * url baseUrl

  Scenario: Borrar un registro y verificar que ha sido eliminado
    Given path '/pet/' + idDelete
    When method delete
    Then status 200
    And match response.message == idDelete.toString()
    Given path  '/pet/' + idDelete
    When method get
    Then status 404
    And match response.message == 'Pet not found'
