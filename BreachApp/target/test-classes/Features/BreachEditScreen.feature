Feature: Breach Entry Screen Validation
  This feature verifies all Breach Entry field validations, attachments, and button functionalities.

  Background:
    Given the user is logged into the Breach Management System
    And the user navigates to the Breach Entry Screen

  @BE14_TC20_S2
  Scenario: BE14_TC20_S2 - Verify Act Impacted field accepts 1529 characters
    When the user enters 1529 characters in the “Act Impacted” field
    Then only text up to 1530 characters can be entered

  @BE14_TC21_S3
  Scenario: BE14_TC21_S3 - Verify Act Impacted field accepts 1531 characters
    When the user enters 1531 characters in the “Act Impacted” field
    Then only text up to 1530 characters can be entered

  @BE14_TC22_S4
  Scenario: BE14_TC22_S4 - Verify Act Impacted field accepts 1530 alphanumeric characters
    When the user enters 1530 alphanumeric characters in the “Act Impacted” field
    Then only text up to 1530 characters can be entered

  @BE14_TC23_S5
  Scenario: BE14_TC23_S5 - Verify Next button works correctly
    When the user clicks on “Next”
    Then the system must navigate to the next screen

  @BE16_TC24_S1
  Scenario: BE16_TC24_S1 - Verify Dependency field accepts up to 255 characters
    When the user enters 254 characters in the “Dependency” field
    Then only text up to 255 characters can be entered

  @BE16_TC25_S2
  Scenario: BE16_TC25_S2 - Verify Dependency field accepts up to 256 characters
    When the user enters 256 characters in the “Dependency” field
    Then only text up to 255 characters can be entered

  @BE17_TC26_S3
  Scenario: BE17_TC26_S3 - Verify Recommendations field accepts up to 1530 characters
    When the user enters 1530 characters in the “Recommendations” field
    Then only text up to 1530 characters can be entered

  @BE17_TC27_S4
  Scenario: BE17_TC27_S4 - Verify Recommendations field accepts 1531 characters
    When the user enters 1531 characters in the “Recommendations” field
    Then only text up to 1530 characters can be entered

  @BE18_TC30_S2
  Scenario: BE18_TC30_S2 - Verify up to 15 attachments can be uploaded
    When the user uploads 15 attachments
    Then all attachments should upload successfully

  @BE18_TC31_S3
  Scenario: BE18_TC31_S3 - Verify total attachment size does not exceed 30MB
    When the user uploads attachments exceeding 30MB
    Then the system should block uploads that exceed 30MB

  @BE19_TC32_S1
  Scenario: BE19_TC32_S1 - Verify Breach Description field is read-only
    When the user attempts to edit the “Breach Description” field
    Then the field should be visible but not editable

  @BE20_TC33_S1
  Scenario: BE20_TC33_S1 - Verify Transfer Breach button on second page
    Given the user navigates to the second page
    When the user checks the “Transfer Breach” button
    Then the button must be visible and functional

  @BE21_TC34_S1
  Scenario: BE21_TC34_S1 - Verify Save in Draft & Next button on second page
    Given the user navigates to the second page
    When the user checks the “Save in Draft & Next” button
    Then the button must be visible and functional

  @BE22_TC36_S1
  Scenario: BE22_TC36_S1 - Verify Update & Next button on second page
    Given the user navigates to the second page
    When the user checks the “Update & Next” button
    Then the button must be visible and functional

  @BE23_TC37_S1
  Scenario: BE23_TC37_S1 - Verify Back button works correctly
    Given the user is on the second page
    When the user clicks the “Back” button
    Then the system should navigate to the previous screen without data loss