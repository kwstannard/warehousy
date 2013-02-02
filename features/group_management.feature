Feature: Group Management

  Scenario: Creating a group
    Given I visit '/groups/new'
    And I fill in 'Name' with 'Group A'
    When I click button 'Create Group'
    Then I will see 'Group A'
