Feature: To execute the java script function

  Scenario: Execute Java script function with and without parameter
    * def getIntValue = function() { return 10;}
    Then print "Function Value ==> ", getIntValue()
    * def getRandomValue = function() { return Math.random();}
    Then print "Function Value ==> ", getRandomValue()
    * def getRandomValue1 = function() { return Math.floor((100));}
    Then print "Function Value ==> ", getRandomValue1()