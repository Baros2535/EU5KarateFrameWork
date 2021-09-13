Feature: Bookit Api Tests

  Background:
    * def BookBaseURL = "https://cybertek-reservation-api-qa2.herokuapp.com"
    * def authFeature = call read('classpath:features/BookItAuth.feature')
    * def accessToken = authFeature.token
    * print "Token From Backround " , accessToken

  @wip
  Scenario: get user information
    Given url BookBaseURL
    And path "/api/students/me"
    And header Authorization = "Bearer " + accessToken
    And header Accept = "application/json"
    And method get
    Then status 200
    * print response
    


