@Dummy
Feature: Validate complete product schema

    @products
    Scenario: Validate product response structure

        Given url dummyUrl
        And path 'products/1'

        When method get

        Then status 200

        * def productSchema = read('classpath:data/dummyJsonData/product-schema.json')

        And match response == productSchema