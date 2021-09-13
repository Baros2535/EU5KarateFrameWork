Feature: data driven test


  Background:
    * def BookBaseURL = "https://cybertek-reservation-api-qa2.herokuapp.com"

  @wip
  Scenario Outline: get toke for different users
    Given url BookBaseURL
    And path "sign"
    And param email = "<email>"
    And param password = "<password>"
    And header Accept = "application/json"
    And method get
    Then status 200
    * print response.accessToken
    And def token = response.accessToken

    Examples:
      | email                       | password    |
      | jalabaster7f@drupal.org     | terimapam   |
      | sbirdbj@fc2.com             | asenorval   |
      | htwinbrowb4@blogspot.com    | kanyabang   |
      | dfrederickb5@yellowbook.com | engraciahuc |





