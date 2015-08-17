Feature: Login feature

  Scenario: As a valid user I can log into my app
    Given I enter my first name "A"
    And I enter my last name "B"
    When I press login
    Then I am logged as "A B"
