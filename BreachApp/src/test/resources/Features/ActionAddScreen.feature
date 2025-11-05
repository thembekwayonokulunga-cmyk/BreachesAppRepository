Feature: Action Add Screen
  To ensure document authenticity and safety
  As a system user
  I want the system to validate security thread and input correctly

  @TC_AA1_S1
  Scenario: Verify that security thread input is accepted and saved
    Given the user enters a valid security thread
    When the system checks authenticity and safety
    Then the input must be accepted and saved

  @TC_AA1_S2
  Scenario: Verify that system prevents submission with invalid security thread
    Given the user enters an invalid or missing security thread
    When the system checks authenticity and safety
    Then the system must prevent submission and show an error

  @TC_AA1_S3
  Scenario: Verify that system blocks counterfeit document
    Given the user submits a document with counterfeit security thread
    When the system verifies authenticity
    Then the system must block input and show an error

  @TC_AA2_S1
  Scenario: Verify that input date is blocked if invalid
    Given the user enters an invalid date "2025-09-15"
    When the system validates the input
    Then the input must be blocked and an error shown

  @TC_AA2_S2
  Scenario: Verify that valid date input is accepted
    Given the user enters a valid date "2024-09-01"
    When the system validates the input
    Then the date must be accepted and saved

  @TC_AA3_S1
  Scenario: Verify that system blocks input on invalid selection
    Given the user makes an invalid selection "System Failure"
    When the system processes the selection
    Then the system must prevent invalid selection and show an error

  @TC_AA3_S2
  Scenario: Verify that valid selection is saved
    Given the user selects a valid option "Mobile72"
    When the system processes the selection
    Then the selected option must be saved

  @TC_AA5_S1
  Scenario: Verify that test description is accepted and validated
    Given the user enters a test description of breach incident
    When the system checks authenticity and prevents unauthorized access
    Then the input must be accepted and saved

@TC_AA5_S1
  Scenario: Verify breach incident description is accepted and saved
    Given the user enters "Test description about breach incident: Regular validation of the security thread minimizes risks of forgery and strengthens data protection."
    When the system validates the description
    Then the input must be accepted and saved

  @TC_AA6_S2
  Scenario: Verify breach incident description is blocked for invalid entry
    Given the user enters "Test description about breach incident: Regular validation of the security thread minimizes risks of forgery and strengthens data protection."
    When the system detects an invalid or duplicate input
    Then the system must block input and show an error

  @TC_AA6_S1
  Scenario: Verify toggle defaults to OFF
    Given the user opens the form
    When the system loads the toggle
    Then the toggle default state must be OFF

  @TC_AA7_S2
  Scenario: Verify toggle changes to ON
    Given the toggle default state is OFF
    When the user changes the toggle to ON
    Then the toggle state must change to ON

  @TC_AA7_S1
  Scenario: Verify email input is accepted
    Given the user enters "penny.solani@intellisicent.co.za"
    When the system validates the email
    Then the input must be accepted and saved

  @TC_AA8_S2
  Scenario: Verify system shows error for invalid email input
    Given the user enters an invalid email
    When the system validates the input
    Then an error must be shown and submission must be blocked

  @TC_AA8_S1
  Scenario: Verify valid email input is accepted
    Given the user enters "melusi.nkosinathi.khoza@intellisicent.co.za"
    When the system validates the input
    Then the input must be accepted and saved

  @TC_AA9_S2
  Scenario: Verify error message on invalid email input
    Given the user enters an invalid or empty email field
    When the system validates the email
    Then an error must be shown and submission must be blocked

  @TC_AA9_S1
  Scenario: Verify optional file upload allows form submission
    Given the user uploads "incident_report.pdf"
    When the system validates file upload
    Then the file must be optional and the form submitted successfully

  @TC_AA10_S2
  Scenario: Verify error shown when required attachment is missing
    Given the user tries to submit form without required attachment
    When the system validates the form
    Then the system must show an error requiring an attachment

  @TC_AA10_S3
  Scenario: Verify successful submission when attachment is provided
    Given the user uploads "evidence_doc.jpg"
    When the system validates attachment
    Then the attachment must be saved and the form submitted successfully