Feature: Verify Persons

  Background:
    Given url 'http://localhost:8081/'

  Scenario:   Get All Persons
    Given path 'persons'
    When method get
    Then status 200
    Then match response == '#array'