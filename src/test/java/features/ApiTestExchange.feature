Feature: api test

  Background:
    * def BaseURL = 'http://api.exchangeratesapi.io'

  Scenario:
    Given url BaseURL + '/latest?access_key=466c5621538288db882a6d1091d4f0b7'
    When method get
    Then status 200

  Scenario:
    Given url BaseURL + '/2010-01-12?access_key=466c5621538288db882a6d1091d4f0b7'
    When method get
    Then status 200
    And match header Content-Type == 'application/json; Charset=UTF-8'
    And match header Connection == 'keep-alive'
    #how to verify header is there or not
    And match header Date == '#present'


Scenario: json body verification
    Given url BaseURL + '/2010-01-12?access_key=466c5621538288db882a6d1091d4f0b7'
    When method get
    Then status 200
    And match header Content-Type == 'application/json; Charset=UTF-8'
    And print response
    Then match response.base == 'EUR'
    Then match response.rates contains {"SCR": 16.094383}
    Then match response.rates.USD =='#present'
