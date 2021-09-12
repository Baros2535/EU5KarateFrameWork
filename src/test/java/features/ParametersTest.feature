Feature: parameters example

  Background:
    * def BaseURL = 'http://api.exchangeratesapi.io'
    * def HRBaseURL = 'http://54.237.100.89:1000/ords/hr'
    * def spartanBaseURL = 'http://54.237.100.89:8000/api'



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



  Scenario: path params
    * def expected = {"region_id": 1}
    Given url HRBaseURL
    And path  'regions'
    And path '1'
    When method get
    Then status 200
    And match response contains expected
    * print response

  Scenario: path params
    * def expected =
  """
  {
  "id": 1001,
  "name": "TJ",
  "gender": "Male",
  "phone": 1231231231
  }
  """
    Given url spartanBaseURL
    And path  'spartans'
    And path '1001'
    When method get
    Then status 200
    And match response == expected
    * print response



Scenario: query params
    Given url spartanBaseURL
    And path "/spartans/search"
    And param nameContains = 'j'
    And param gender = 'Female'
    When method get
    Then status 200
    #And match header Content-Type contains 'application/json'
    And match header Content-Type == 'application/json'
    And print response
    
    * print response.content

  Scenario: query params
    Given url spartanBaseURL
    And path "/spartans/search"
    And param nameContains = 'j'
    And param gender = 'Female'
    When method get
    Then status 200
    #And match header Content-Type contains 'application/json'
    And match header Content-Type == 'application/json'
    And match each response.content contains {"gender" : "Female"}
    And match each response.content[*].gender == 'Female'
    And match each response.content[*].phone == '#number'

    * print  response.content[0].gender

    * print "Gender " , each response.content



  Scenario: hr regions example
    Given url HRBaseURL
    And path 'regions'
    When method get
    Then status 200
   # * print response

    And match response.limit == 25

 
