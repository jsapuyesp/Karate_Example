@Placeholder
Feature: Users API
    Background: Set URL Base
    * url baseUrl

    Scenario: Get user by ID
        Given path '/users/1'
        When method get
        Then status 200
        And match response.name == '#string'


