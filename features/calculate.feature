@android @acceptance
Feature: Tip calculation page

As an user, I want to calculate the tip percentage amount so
that I can pay the total bill amount

  Scenario: Verify tip amount calculation
    Given I am in the calculate tip page
    When I enter a valid bill amount
    And I click Calculate tip button 
    Then I should see the correct total amount

  Scenario: Verify tip percentage settings
    Given I am in the app settings page
    When I enter a valid percentage amount
    And I click Save settings button
    And I go back to calculate tip page
    Then I should see the new tip percentage value
