Feature: variables Creation in karate file

  Background: Create and initialize variables
    * def app_name = "Google"
    * def page_lode_timeout = 20

  # <Gherkin keyword> <def> <Variable_name> = <Value>
  # * <def> <Variable_name> = <Value>

  Scenario: To create a variable with
    Given def var_int = 10
    And def var_string = "Karate"
    Then print "Int variable ==> ", var_int
    And print "String variable ==> ", var_string
     * def var_int_2 = var_int + 10
    And print "New Variable ==>", var_int_2
    And print "BackGround Section variable ==> ", app_name , page_lode_timeout

