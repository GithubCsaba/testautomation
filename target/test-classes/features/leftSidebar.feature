@Testcase03
Feature: The user shall be able to click on all the items on the left sidebar (Groceries/Bevásárlás) on Tesco

  Rule: It is allowed to click on all the items on the left sidebar (Groceries/Bevásárlás)

    Background:
      Given open main page
      And clear cookie cache
      And accept cookies

    Scenario: click on the first item on the left sidebar (Groceries/Bevásárlás)
      Given departure is set to "office"
      When  arrival is set to "Nyugati"
      Then it shows the route in "hungarian"

