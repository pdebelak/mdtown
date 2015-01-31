Feature: An application to allow people to write, save, and share markdown documents
  In order to have a useable web site
  The users
  Should be able to visit our web site
  
  Scenario: The application has a home page
    Given I do have a web application
    When I visit the home page
    Then I should see the home page
  
  @javascript
  Scenario: The application lets you try out the markdown editor
    Given I am on the home page
    When I type markdown in the text editor
    Then I should see the markdown rendered as html