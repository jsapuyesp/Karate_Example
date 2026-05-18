@Dummy
Feature: Authentication
    Background:
    * url dummyUrl

    @login
    Scenario: Login and get token
        Given path 'auth/login'
        And request read('classpath:data/dummyJsonData/auth.json')
        When method post
        Then status 200
        And response.accessToken == '#string'

        * def token = response.accessToken