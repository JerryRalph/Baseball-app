Feature: Player Management
  Scenario: Add Player to the Management system
    Given I visit the add player page
    When I submit the add player form
    Then I see the player I created has been added to database

  Scenario: View Player Schedule
    Given I visit the player schedule page
    When I click the tournament schedule link
    Then I see the list of tournaments

  Scenario: Delete a Player from the Management system
    Given I visit the player page
    When I click delete link on the player page
    Then I see the player has been deleted from database

  Scenario: View Player Stats
    Given I visit the player stats page
    When I click the stats link
    Then I see the list of player stats

  Scenario: View Player Detail
    Given I visit the player detail page
    When I click the detail link
    Then I see the list of player detail

  Scenario: Edit Player
    Given I visit the player edit page
    When I click the edit link
    And I enter player information
    Then I see the player information was updated