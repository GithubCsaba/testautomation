@Testcase05
Feature: As a registered customer,
  I want to open the Promotions site on the TESCO website,
  so that I can choose the bakery website which is in promotion (Bakery Promotions) for purchasing products.

  Rule: The registered user should be able to login to Tesco webshop. It is allowed to login to Tesco webshop

    Background:
      Given open main page
      And clear cookie cache
      And accept cookies
      And logged in

      Scenario: filter on Promotions and Bakery
        Given language is set to "english"
        When customer clicks on "Promotions"
        And customer clicks on "Bakery"
        Then "Bakery Promotions" is visible