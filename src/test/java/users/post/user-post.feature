Feature: Post user on reqres


  Background
    * url "https://reqres.in"
    * path "/api/users/"
    * request { "name": "#(name)", "job": "#(job)" }


  Scenario Outline: Post a user from
    When method post
    Then status 201

    Examples:
      | name    | job     |
      | juan    | leader  |
      | carlos  | doctor  |
      | gustavo | teacher |


