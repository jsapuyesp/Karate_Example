@Placeholder
Feature: Posts API
    Background: Set URL Base
    * url baseUrl

@post
Scenario Outline: Get post by ID
	    Given path '/posts/'  + "<id_post>"
	    When method get
	    Then status 200
	    And match response.title == '#string'
	    Examples:
	    | id_post |
	    | 1 |
	    | 2 |
	    | 3 |