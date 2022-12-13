@Testcase04
Feature:As a registered customer,
  I want to login to the TESCO website,
  so that I can use the website for purchasing products.

  Rule: The registered user should be able to login to Tesco webshop. It is allowed to login to Tesco webshop

    Background:
      Given open main page
      And clear cookie cache
      And accept cookies

    Scenario Outline: login with existing credentials to the Tesco webshop
      Given language is set to "<language>"
      When user clicks on "<sign in>"
      And user types "<Email address>"
      And user types "<Password>"
      Then <header-greetings> is visible

      Examples:
      | language | sign in | Email address| Password | header-greetings |
      | english | Sign in | csabaxorban@gmail.com | TeScO_1234 | Hello Csaba |
      | hungarian | Bejelentkezés | csabaxorban@gmail.com | TeScO_1234 | Üdvözlünk Csaba |