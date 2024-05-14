Feature: Get Details of User 2

  Background:
    Given url 'https://reqres.in/api/'

  Scenario:   Get Details of User 2
    Given path 'users/2'
    When method get
    Then status 200

  Scenario:   Get Details of User Params 2
    Given path 'users'
    And param page = "2"
    When method get
    Then status 200
    Then match response.page == 2

  Scenario: create a user and then get it by id
    * def user =
      """
      {
        "name": "Juan Dela Cruz",
        "job": "leader"
      }
      """

    Given path 'users'
    And request user
    When method post
    Then status 201
    Then match response == "#object"
    Then match response.name == "Juan Dela Cruz"

    * def name = response.name
    * print 'created name is: ', name

    Given path name
    # When method get
    # Then status 200
    # And match response contains user