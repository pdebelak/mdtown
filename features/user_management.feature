Feature: A way to identify yourself to the application
  In order to prevent anyone from editing my content
  The users
  Should be able to create accounts and sign in

  Scenario: Creating an account
    Given I do not have an account
    When I click 'Sign Up'
    Then I should be able to create my account

  Scenario: Signing in
    Given I have an account
    When I click 'Sign In'
    Then I should be able to log in