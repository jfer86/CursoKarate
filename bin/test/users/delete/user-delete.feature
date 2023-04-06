Feature: Delete user on reqres

  Scenario: Get a user from
    Given url "https://reqres.in" + "/api/users/" + "754"
    When method delete
    Then status 204