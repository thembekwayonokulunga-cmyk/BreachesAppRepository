Feature: Breaches Dashboard Functionality - Nedbank Breach App

  Background:
    Given User has successfully logged into the Breach App
    And User is on the Breaches Dashboard page

  @DashboardView
  Scenario: User views the total breaches overview
    When User clicks on the "All Breaches" tab
    Then The dashboard should display a list of all recorded breaches
    And The total count should match the number of breaches in the system

  @FilterByStatus
  Scenario Outline: User filters breaches by status
    When User selects "<Status>" from the filter dropdown
    Then Only breaches with status "<Status>" should be displayed
    And The total count updates accordingly

    Examples:
      | Status     |
      | Open       |
      | Resolved   |
      | In Progress|
      | Pending    |

  @SearchBreach
  Scenario: User searches for a specific breach
    When User enters "Data Leak" in the search bar
    And User presses Enter
    Then Breach records related to "Data Leak" should be displayed

  @OpenBreachDetails
  Scenario: User opens a breach record to view details
    When User clicks on the first breach in the list
    Then The Breach Info Screen should open
    And The details should include fields: ID, Description, Status, Owner, and Date Logged

  @AddNewBreach
  Scenario: User adds a new breach record
    When User clicks on the "Add New Breach" button
    And Enters the following details:
      | Field       | Value                    |
      | Description | Unauthorised Access Case |
      | Status      | Open                     |
      | Owner       | Mashadi Ntshudisane      |
      | Date Logged | 2025-11-11               |
    And Clicks Save
    Then A confirmation message "Breach added successfully" should be displayed
    And The new breach should appear on the dashboard

  @EditBreach
  Scenario: User edits an existing breach record
    When User selects a breach with ID "BRCH001"
    And Clicks Edit
    And Updates the Status to "Resolved"
    And Clicks Save
    Then The breach record should display Status as "Resolved"
    And A success message should be shown

  @DeleteBreach
  Scenario: User deletes a breach record
    When User selects a breach with ID "BRCH002"
    And Clicks Delete
    And Confirms the deletion
    Then The record should no longer appear in the list
    And A message "Breach deleted successfully" should appear

  @DashboardNavigation
  Scenario: User navigates between Dashboard and Breach Info screens
    When User clicks on a breach
    Then The Breach Info screen should open
    When User clicks on "Back to Dashboard"
    Then The Breaches Dashboard should be displayed again
