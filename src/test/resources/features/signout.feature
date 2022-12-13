@Testcase12
Feature:As a customer,
  I want to signout from the TESCO website,
  so that I'm signed out with my account.

  Rule: The registered user should be able to signout from Tesco webshop. It is allowed to sign from Tesco webshop

    Background:
      Given open main page
      And clear cookie cache
      And accept cookies

    Scenario Outline: signout with existing credentials from the Tesco webshop
      Given language is set to "<language>"
      And  "<header-greetings>" is visible
      Then user clicks on "<Log button>"
      And  "<header-greetings>" is not visible

      Examples:
        | language | header-greetings | Log button|
        | english | Hello Csaba | sign out       |
        | hungarian | Üdvözlünk Csaba | Kijelentkezés |