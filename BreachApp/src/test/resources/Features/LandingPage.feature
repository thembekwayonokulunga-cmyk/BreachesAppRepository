Feature: Landing Page Access and Visualization
  The landing page should provide secure login, display breaches and actions in charts,
  and allow navigation to dashboards.
  Charts must update dynamically and exclude any statuses with zero records.

  Background:
    Given I launch the Chrome browser
    And I navigate to the application URL

  Scenario Outline: Verify login functionality
    When I enter username "<username>"
    And I enter password "<password>"
    And I click the Login button
    Then I should see "<expectedResult>"

    Examples:
      | username     | password      | expectedResult                     |
      | Bongisani1243 | #Password232  | Successful login and landing page  |
      | Bongisani123 | #Wrong#232    | Login failed - invalid credentials |
      | Wrong23      | #Password232  | Login failed - invalid credentials |

  Scenario: Verify breaches pie chart is displayed for authenticated user
    Given I login with valid credentials "Bongisani123" and "#Password232"
    Then the breaches pie chart should be displayed

  Scenario: Verify breaches pie chart updates when new breach is added
    Given I login with valid credentials "Bongisani123" and "#Password232"
    When I create a new breach with status "Open"
    Then the breaches pie chart should update immediately

  Scenario: Verify breaches pie chart updates when breach status changes
    Given I login with valid credentials "Bongisani123" and "#Password232"
    And the breaches pie chart is displayed
    When I update the status of a breach from "Open" to "Closed"
    Then the breaches pie chart should reflect the status change immediately

  Scenario: Verify breaches pie chart excludes statuses with zero records
    Given I login with valid credentials "Bongisani123" and "#Password232"
    When I filter breaches by status "Closed" where no records exist
    Then the breaches pie chart should not display a slice for any status that has zero breaches

  Scenario: Verify actions pie chart is displayed
    Given I login with valid credentials "Bongisani123" and "#Password232"
    Then the actions pie chart should be displayed
    And I should be able to hover over each slice

  Scenario: Verify actions pie chart updates dynamically when action status changes
    Given I login with valid credentials "Bongisani123" and "#Password232"
    When I update the status of an action from "Open" to "Completed"
    Then the actions pie chart should reflect the status change immediately

  Scenario: Verify actions pie chart excludes statuses with zero records
    Given I login with valid credentials "Bongisani123" and "#Password232"
    When I apply a filter resulting in no matching actions (e.g., status "Closed")
    Then the actions pie chart should not display a slice for any status that has zero actions

  Scenario: Verify navigation to Breaches Dashboard
    Given I login with valid credentials "Bongisani123" and "#Password232"
    When I click the "All Breaches" button
    Then the system should navigate to the Breaches Dashboard

  Scenario: Verify Breaches Dashboard displays only last 12 months’ data
    Given I login with valid credentials "Bongisani123" and "#Password232"
    When I click the "All Breaches" button
    Then the dashboard should only display breaches created in the last 12 months

  Scenario: Verify navigation to Actions Dashboard
    Given I login with valid credentials "Bongisani123" and "#Password232"
    When I click the "All Actions" button
    Then the system should navigate to the Actions Dashboard
