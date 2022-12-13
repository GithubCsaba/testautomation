@Testcase01
Feature: As a customer,
  I want to clear all the cookies in the Chrome browser,
  so that I can accept the cookies on the TESCO website at all entries.

  Rule: It is allowed to accept all the cookies. All the cookies should be accepted by the user on the website of Tesco

    Background:
      Given clear cookie cache
      And open main page
      And "Accept all cookies" button is visible

    Scenario: accept cookies
      Given accept cookies