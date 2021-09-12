Feature: parameters example

  Background:
    * def BaseURL = 'http://api.exchangeratesapi.io'
    * def HRBaseURL = 'http://54.237.100.89:1000/ords/hr'


  Scenario: path params
    Given url BaseURL
    And path  'latest'
    And param accessKey = '466c5621538288db882a6d1091d4f0b7'
    When method get
    Then status 200


  Scenario: path params
    Given url BaseURL
    And path  '2010-01-12'
    And param accessKey = '466c5621538288db882a6d1091d4f0b7'
    When method get
    Then status 200

  Scenario: path params
    Given url HRBaseURL
    And path  'employees'
    When method get
    Then status 200
    * print response


  Scenario: path params
    Given url HRBaseURL
    And path  'regions'
    And path '1'
    When method get
    Then status 200
    And match response contains {"region_id": 1}
    
    * print response


  @wip
  Scenario: path params
    * def expected = {"region_id": 1}
    Given url HRBaseURL
    And path  'regions'
    And path '1'
    When method get
    Then status 200
    And match response contains expected
    * print response