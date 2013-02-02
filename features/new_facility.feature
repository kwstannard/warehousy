Feature: Manage Facility

  Scenario: New facility in Boston
    Given I want to track a facility
    And it is in Boston
    When I want to track it
    Then the response is "Boston facility saved"

  Scenario: New facility in Portland
    Given I want to track a facility
    And it is in Portland
    When I want to track it
    Then the response is "Portland facility saved"

  Scenario: Get a list of facilities
    Given there are 2 facilities in Portland
    When I want to track them
    Then the response is the facilities' names
