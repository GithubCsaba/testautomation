@Testcase08
Feature: As a customer,
I want to search for "soft drinks" in the main "searchbox" on website by TESCO,
so that I can add the see the list of all results for "soft drinks".

Rule: The registered user should be able to login to Tesco webshop. It is allowed to login to Tesco webshop

Background:
Given open main page
And clear cookie cache
And accept cookies
And logged in

Scenario: filter on "soft drinks" in the main "searchbox"
Given language is set to "english"
When user clicks on "searchbox"
And user types in "searchbox" "soft drinks"
Then "Result for "soft drinks" " is visible