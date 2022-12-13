@Testcase01
Feature: All the cookies shall be accepted on the website of Tesco
  Rule: It is allowed to accept the cookies

    Background:
      Given clear cookie cache
      And open main page

    Scenario: accept cookies
      Given accept cookies