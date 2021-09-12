Feature: api test
  Background:
    * def BaseURL = 'http://54.237.100.89:1000/ords/hr'
  
  Scenario: basic status code validation
    Given url BaseURL + '/employees'
    When method GET
    Then status 200


  Scenario: get single employee
    Given url BaseURL + "/regions/1"
    When method get 
    Then status 200



