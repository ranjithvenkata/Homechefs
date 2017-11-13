Feature: comment
  In order to know about the views of other cutomers on that dish lets add some comments
  Scenario: Add comment to dish

    Given I am a chef
    Given there is a dish
    And Iam logged in
    Then I click on my menu
    Then I click on new dish
    Then I create dish
    Then I should see comment
