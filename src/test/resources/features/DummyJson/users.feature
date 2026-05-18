@Dummy
Feature: Users of DummyJson
    Background:
    * url dummyUrl
    * def auth = call read('classpath:features/DummyJson/auth.feature')
    * def token = auth.token

    @get
    Scenario: Get user by ID
        Given path '/users/1'
        When method get
        Then status 200
        And match response.firstName == 'Emily'

    Scenario: Get current user
        Given path 'auth/me'
        And header Authorization = 'Bearer ' + token
        When method get
        Then status 200
        And match response.username == 'emilys'
