Feature: get user token

  Background:
    * def BookBaseURL = "https://cybertek-reservation-api-qa2.herokuapp.com"


  Scenario: get one user token
    Given url BookBaseURL
    And path "sign"
    And param email = "jalabaster7f@drupal.org"
    And param password = "terimapam"
    And header Accept = "application/json"
    And method get
    Then status 200
    * print response.accessToken
    And def token = response.accessToken



