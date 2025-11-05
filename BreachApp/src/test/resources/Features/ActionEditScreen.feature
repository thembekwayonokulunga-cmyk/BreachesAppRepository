Feature: Action Edit Screen
  To ensure that all fields on the Action Edit Screen are correctly displayed and not editable
  As a system user
  I want to verify that the screen shows the correct information and prevents modification

  @TC_AE1_S1
  Scenario: Verify fields are visible but not editable for Management Actions
    Given the user navigates to the Action Edit Screen
    When the screen loads
    Then the Action Edit Screen must be displayed on the screen
    And Agreed Management Actions fields must be visible but not editable

  @TC_AE2_S1
  Scenario: Verify Action Due Date field visibility and restriction
    Given the user accesses the Action Edit Screen
    When the system displays the screen
    Then the Action Due Date field must be visible but not editable

  @TC_AE3_S1
  Scenario: Verify Root Cause field visibility and restriction
    Given the user opens the Action Edit Screen
    When the system displays the Root Cause field
    Then the Root Cause field must be visible but not editable

  @TC_AE4_S1
  Scenario: Verify Root Cause Comment field visibility and restriction
    Given the user opens the Action Edit Screen
    When the system displays the Root Cause Comment field
    Then the Root Cause Comment field must be visible but not editable

  @TC_AE5_S1
  Scenario: Verify Dependency field visibility and restriction
    Given the user accesses the Action Edit Screen
    When the Dependency field is displayed
    Then the field must be visible but cannot be edited

  @TC_AE6_S1
  Scenario: Verify Responsible Individual attachment is mandatory
    Given the user opens the Action Edit Screen
    When the system loads the Responsible Individual attachment field
    Then the system must prevent saving when attachment is missing
    And the attachment must be mandatory

  @TC_AE7_S1
  Scenario: Verify Responsible Individual field visibility and restriction
    Given the user opens the Action Edit Screen
    When the Responsible Individual field is displayed
    Then the field must be visible but not editable

  @TC_AE8_S1
  Scenario: Verify Responsible Individual field cannot be edited
    Given the user accesses the Action Edit Screen
    When the system displays the Responsible Individual field
    Then the field must be visible but cannot be edited

  @TC_AE9_S1
  Scenario: Verify Accountable Individual field visibility and restriction
    Given the user opens the Action Edit Screen
    When the Accountable Individual field is displayed
    Then the field must be visible but not editable

  @TC_AE10_S1
  Scenario: TC_AE10_S1 - Select multiple Delegated individuals
    When the user selects multiple Delegated Individuals
    Then the Delegated Individuals must be displayed on the screen
    And only one Delegated Individual must be selected

  @TC_AE10_S2
  Scenario: TC_AE10_S2 - Validate drop-down list options
    When the user views the Delegated Individual drop-down list
    Then the drop-down list must display valid options

  @TC_AE11_S1
  Scenario: TC_AE11_S1 - Role-based access for RIAU
    Given the user role is RIAU
    When the user edits the Delegated Individual
    Then RIAU must be able to edit DI

  @TC_AE12_S1
  Scenario: TC_AE12_S1 - Select one Delegated individual
    When the user selects one Delegated Individual
    Then the Delegated Individual must be displayed on the screen
    And the section must load successfully

  @TC_AE13_S1
  Scenario: TC_AE13_S1 - Prevent user self-selection
    When a logged-in user selects their own name as Delegated Individual
    Then the system must prevent self-selection
    And display an error message

  @TC_AE14_S1
  Scenario: TC_AE14_S1 - Validate Progress Update field
    When the user leaves the Progress Update field blank
    Then the system must display a “Progress Update required” message

  @TC_AE14_S2
  Scenario: TC_AE14_S2 - Reject invalid characters in text field
    When the user inputs “@@@12344##” in the text field
    Then the system must reject invalid characters
    And accept text only

  @TC_AE14_S3
  Scenario: TC_AE14_S3 - Paste or type 1000 lines
    When the user pastes or types up to 1000 lines
    Then the system must accept up to 1000 lines

  @TC_AE15_S1
  Scenario: TC_AE15_S1 - Upload a single document
    When the user selects “Document.pdf” for upload
    Then the attachment must be displayed on the screen
    And the file must upload successfully

  @TC_AE15_S2
  Scenario: TC_AE15_S2 - Upload multiple attachments
    When the user uploads 15 files
    Then all attachments must be displayed on the screen
    And the system must accept all 15 attachments

  @TC_AE15_S3
  Scenario: TC_AE15_S3 - Upload 10 files
    Given the user is on the Action Edit Screen
    When the user uploads 10 files
    Then the attachments must be displayed on the screen
    And files must upload successfully

  @TC_AE16_S1
  Scenario: TC_AE16_S1 - RIAU/DI role edit permissions
    Given the user role is RIAU or DI
    When the user edits action details
    Then the Responsible users must be able to edit
    And the Action Edit Screen must display the details

  @TC_AE18_S1
  Scenario: TC_AE18_S1 - Comment field validation
    When the user skips the "Comment" field and clicks "Save"
    Then a pop-up must appear requiring a comment

  @TC_AE18_S2
  Scenario: TC_AE18_S2 - Save blocked with empty comment
    When the user leaves the comment blank and clicks "Save"
    Then save must be blocked
    And an error message “Comment are required” must appear