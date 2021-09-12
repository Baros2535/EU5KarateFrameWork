Feature: Karate Java Integration

  Background:
    * def BaseURL = 'http://api.exchangeratesapi.io'
    * def HRBaseURL = 'http://54.237.100.89:1000/ords/hr'
    * def spartanBaseURL = 'http://54.237.100.89:8000/api'

  @wip
    Scenario: Get a spartan
      Given url spartanBaseURL
      And path "spartans"
      And header Accept = "application/json"
      When method get
      Then status 200

  @wip
  Scenario: Get a spartan
    Given url spartanBaseURL
    And path "spartans"
    And header Accept = "application/json"
    And header Content-Type = "application/json"
    And request
    """
{
    "name": "TJ",
    "gender": "Male",
    "phone": 1231231231
}
    """

    When method post
    Then status 201
    * print response

    @wip
    Scenario: Create a new spartan with random data
      #point to class and create an object
  * def randomSpartan = Java.type("utilities.SpartanDataGenerator")
      # call the method by object
      * def newSpartan = randomSpartan.createSpartan()
      # print
     * print newSpartan

      Given url spartanBaseURL
      And path "spartans"
      And header Accept = "application/json"
      And header Content-Type = "application/json"
      And request newSpartan
      When method post
      Then status 201
      * print response

