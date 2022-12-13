@Testcase06
Feature: As a customer,
  I want to sort by: "Price: low to high" on the promotions/household website by TESCO,
  so that I can find the cheapest bakery product.

  Rule: The registered user should be able to login to Tesco webshop. It is allowed to login to Tesco webshop

    Background:
      Given open main page
      And clear cookie cache
      And accept cookies
      And logged in
      And language is set to "<english>"
      

    Scenario: filter on Promotions and Household and sort the products by Price: Low to High
      Given language is set to "english"
      When customer clicks on "Promotions"
      And customer clicks on "Household"
      And "Household Promotions" is visible
      Then customer clicks on "Sort by"
      And "Sort by" is set to "Price: Low to High"