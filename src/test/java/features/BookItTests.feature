Feature: Bookit Api Tests

  Background:
    * def BookBaseURL = "https://cybertek-reservation-api-qa2.herokuapp.com"
    * def authFeature = call read('classpath:features/BookItAuth.feature')
    * def accessToken = authFeature.token
    * print "Token From Backround " , accessToken

  Scenario: get user information
    Given url BookBaseURL
    And path "/api/students/me"
    And header Authorization = "Bearer " + accessToken
    And header Accept = "application/json"
    And method get
    Then status 200
    * print response
    And match response ==
  """
  {
  "firstName": "Teri",
  "lastName": "Mapam",
  "role": "student-team-leader",
  "id": 130
}
    """


  @wip
  
  Scenario: get campus information
    Given url BookBaseURL
    And path "/api/campuses"
    And header Authorization = "Bearer " + accessToken
    And header Accept = "application/json"
    And method get
    Then status 200
    And print response
    And match response ==  read("classpath:data/campuses.json")
