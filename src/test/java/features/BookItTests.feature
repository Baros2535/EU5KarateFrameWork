Feature: Bookit Api Tests

  Background:
    * def BookBaseURL = "https://cybertek-reservation-api-qa2.herokuapp.com"
    * def authFeature = call read('classpath:features/BookItAuth.feature')
    * def accessToken = authFeature.token
    * print "Token From Backround " , accessToken

  @wip
  Scenario: get user information
    Given url BookBaseURL


