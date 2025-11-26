Feature: Action Information Verification
  To ensure that all fields on the Action Information screen are correctly displayed and match system records
  As a system user
  I want to verify that the displayed action details are accurate and consistent

  Background:
    Given the user is logged in with valid credentials
      | Username | Password  |
      | ValidUser | Valid123 |

  @TCAI1_S1
  Scenario: Click All Actions and locate an action
    When the user clicks on the 'All Actions' button
    Then the Actions Dashboard is displayed showing all actions in a grid format
    And the user locates an action with Reference No. "REF-2025-001"
    Then the action record appears in the list

  @TCAI1_S1
  Scenario: Verify Action Due Date
    Given the user selects the action
    Then the Action Due Date displayed matches the system record

  @TCAI2_S1
  Scenario: Verify Action Status
    Given the user selects the action
    Then the Action Status displayed matches the system record

  @TCAI3_S1
  Scenario: Verify Responsible Individual
    Given the user selects the action
    Then the Responsible Individual displayed matches the system record

  @TCAI4_S1
  Scenario: Verify Accountable Individual
    Given the user selects the action
    Then the Accountable Individual displayed matches the system record

  @TCAI5_S1
  Scenario: Verify Delegated Individual
    Given the user selects the action
    Then the Delegated Individual displayed matches the system record

  @TCAI6_S1
  Scenario: Verify Root Cause
    Given the user selects the action
    Then the Root Cause displayed matches the system record

  @TCAI7_S1
  Scenario: Verify Root Cause Comment
    Given the user selects the action
    Then the Root Cause Comment displayed matches the system record

  @TCAI8_S1
  Scenario: Verify Agreed Management Actions
    Given the user selects the action
    Then the Agreed Management Actions field displays the correct multi-line text

  @TCAI9_S1
  Scenario: Verify Additional Comments
    Given the user selects the action
    Then the Additional Comments displayed match the system record

  @TCAI10_S1
  Scenario: Verify Action Dependency
    Given the user selects the action
    Then the Action Dependency field displays the correct linked information

  @TCAI11_S1
  Scenario: Verify Attachments Mandatory
    Given the user selects the action
    Then the Attachments Mandatory field reflects the system value

  @TCAI12_S1
  Scenario: Verify Previously Uploaded Attachments
    Given the user selects the action
    Then all uploaded attachments appear with correct file names

  @TCAI13_S1
  Scenario: Locate Progress Update
    Given the user selects the action
    Then the Progress Update section is visible

  @TCAI14_S1
  Scenario: Verify Closure Date
    Given the user selects the action
    Then the displayed closure date matches the system record

  @TCAI15_S1
  Scenario: Verify User Who Closed Action
    Given the user selects the action
    Then the correct user who closed the action is displayed

  @TCAI16_S1
  Scenario: Verify Role of User Who Closed Action
    Given the user selects the action
    Then the correct role of the user who closed the action is displayed

  @TCAI17_S1
  Scenario: Verify Oversight Consent Date
    Given the user selects the action
    Then the Oversight Consent Date matches the system record

  @TCAI18_S1
  Scenario: Verify Oversight Consent Result
    Given the user selects the action
    Then the Oversight Consent Result displays the correct value (Approved/Rejected)

  @TCAI19_S1
  Scenario: Verify Oversight Consent Comment
    Given the user selects the action
    Then the Oversight Consent Comment is fully visible and readable

  @TCAI20_S1
  Scenario: Verify Compliance Consent Date
    Given the user selects the action
    Then the Compliance Consent Date appears in the correct format

  @TCAI21_S1
  Scenario: Verify Compliance Consent Result
    Given the user selects the action
    Then the Compliance Consent Result is displayed clearly

  @TCAI22_S1
  Scenario: Verify Compliance Consent Comment
    Given the user selects the action
    Then the Compliance Consent Comment is fully visible

  @TCAI23_S1
  Scenario: Verify Responsible Individual Sign-off Date
    Given the user selects the action
    Then the Sign-off Date is clearly visible and in correct format

  @TCAI24_S1
  Scenario: Verify Responsible Individual Sign-off Result
    Given the user selects the action
    Then the Sign-off Result displays the correct outcome (Accepted/Rejected)

  @TCAI25_S1
  Scenario: Verify Responsible Individual Sign-off Comment
    Given the user selects the action
    Then the Sign-off Comment is fully visible

  @TCAI26_S1
  Scenario: Navigate Back
    Given the user selects the action
    When the user clicks the Back button
    Then the user is navigated to the previous screen without losing data
