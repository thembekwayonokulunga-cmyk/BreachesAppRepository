Feature: Breach Information Screen - Nedbank Breach App

  Background:
    Given User has successfully logged into the Breach App
    And User is on the Breaches Info Screen for a specific breach

  @ViewBreachDetails
  Scenario: User views complete breach information
    When User opens the breach record with ID "BRCH001"
    Then The breach details should display:
      | Field         | Expected Value               |
      | Breach ID     | BRCH001                      |
      | Description   | Data Exposure Incident        |
      | Status        | Open                         |
      | Owner         | Mashadi Ntshudisane           |
      | Date Logged   | 2025-11-10                   |

  @ValidateMandatoryFields
  Scenario: User verifies all mandatory fields are displayed and not editable when viewing
    Then The following fields should be present:
      | Field Name    |
      | Breach ID     |
      | Description   |
      | Status        |
      | Owner         |
      | Date Logged   |
      | Actions       |

  @EditBreachInfo
  Scenario: User edits breach details from the info screen
    When User clicks the "Edit" button
    And Updates the description to "Updated description: Customer data breach"
    And Updates the status to "Resolved"
    And Clicks "Save"
    Then A success message "Breach details updated successfully" should appear
    And The status field should now display "Resolved"

  @CancelEdit
  Scenario: User cancels an edit
    When User clicks the "Edit" button
    And Makes changes to the description
    And Clicks "Cancel"
    Then The system should discard the changes
    And Original data should remain unchanged

  @ExportBreach
  Scenario: User exports breach details as PDF
    When User clicks the "Export" button
    Then A PDF file containing the breach information should be downloaded
    And The filename should include the Breach ID (e.g., "Breach_BRCH001.pdf")

  @VerifyFieldValidation
  Scenario: User tries to save breach with missing mandatory fields
    When User clicks "Edit"
    And Clears the description field
    And Clicks "Save"
    Then A validation message "Description field cannot be empty" should appear
    And The breach should not be updated

  @NavigateBack
  Scenario: User navigates back to the dashboard from info screen
    When User clicks the "Back to Dashboard" button
    Then The Breaches Dashboard screen should be displayed

  @AuditTrail
  Scenario: User views the breach update audit trail
    When User clicks the "Audit Trail" tab
    Then The system should display a list of all actions taken on this breach
    And The list should include the date, action type, and user who made the change
