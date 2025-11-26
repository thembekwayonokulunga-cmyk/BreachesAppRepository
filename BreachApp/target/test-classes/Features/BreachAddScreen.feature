Feature: Verify breach add screen

  Background:
    Given User navigate to the breaches app url
    And User clicks All Breaches button
    And User clicks plus button(Add Breach)

  Scenario: Verify that Case Type not editable
    Then Case Type drop-down must be unclickable

  Scenario: Verify that monitoring title holds less than or equal 255 characters
    And User enters monitoring title "Testing breach add screen"

  Scenario: Verify that monitoring title cannot hold more than 255 characters
    And User enters monitoring title "Testing Breach Add Screen involves validating all input fields for accuracy, completeness, and format compliance. It includes verifying correct data capture, UI responsiveness, backend submission, database updates, error messages, boundary testing, and ensuring confirmation messages display correctly."

  Scenario: Verify that Reference No. must be unique
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "123-We"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters a Breach description "Testing Breach Add Screen functionality and the way the system on the breach add screen section works"
    And User clicks Submit & Next
    And User clicks Yes

  Scenario: Entering a Reference No. that already exists
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters a Breach description "Testing Breach Add Screen functionality and the way the system on the breach add screen section works"
    And User clicks Submit & Next

  Scenario: Entering a Reference No. that is more than 255 characters
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "123-We reference number representing the testing phase focused on verifying system behavior, validating data inputs, and ensuring all breach add screen functionalities work as expected. The goal is to confirm accuracy, reliability, and consistency in how the user interacts with the form and how data is processed internally."
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"

  Scenario: Checking that a Breach Type drop down is clickable
    And User Clicks on Breach Type drop down

  Scenario: Selecting a Breach Type
    And User clicks on Breach Type drop down
    And User selects "Compliance"

  Scenario: Verifying that cannot select a future Date opened
    And User enters a Date opened "5-Nov-2026"

  Scenario: Verifying that current date can be selected
    And User selects a Date Opened "5-Nov-2025"

  Scenario: Checking if Cluster field can select both options
    And User selects both "BCB" & "PPB"

  Scenario: Checking if Cluster field can only select one option and Channel field can be clickable
    And User selects "PPB"
    And User clicks on Channel field

  Scenario: Checking if Cluster field can only select one option and Channel field can select two options
    And User selects "BCB"
    And User clicks on Channel field
    And User selects "NIC Digital" and "Consumer Banking Channel"

  Scenario: Checking Date Opened field and Due Date field
    And User selects a past Date Opened "31-Jan-2025"
    And User selects yesterday's date for Due Date "4-Nov-2025"

  Scenario: Verifying Date Opened and Due Date field
    And User selects a past Date Opened "31-Jan-2025"
    And User selects today's date for Due Date "5-Nov-2025"

  Scenario: Creating a new breach without entering BROTA/Control Report Alignment
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Cluster_Name "PPB"
    And User selects a Business_Unit "Consumer Banking Channel"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User enters BROTA/Control Report Alignment Comments "The alignment between BROTA and Control Reports has been reviewed to ensure accuracy and consistency of transactional data."
    And User enters Act Impacted "The impacted act relates to the procedures and regulations governing financial data accuracy, control reporting, and internal compliance standards."
    And User clicks Next
    And User enters a Breach description "Testing Breach Add Screen functionality and the way the system on the breach add screen section works"
    And User clicks Submit & Next

  Scenario: Verifying the BROTA/Control Report Alignment field with less than 1530 characters
    And User enters the BROTA/Control Report Alignment "The alignment between BROTA and Control Reports has been reviewed to ensure accuracy and consistency of transactional data."

  Scenario: Verifying the BROTA/Control Report Alignment field with more than 1530 characters
    And User enters the BROTA/Control Report Alignment "The alignment between the BROTA system and the Control Report has been carefully reviewed to make sure that all data records are consistent, accurate, and correctly reported. During the review, some differences were found between the figures in BROTA and those shown in the Control Report. Most of these differences were caused by timing delays between when data was captured in BROTA and when it was updated in the Control Report. In a few cases, user entry errors, delayed approvals, and incomplete data synchronization also contributed to the inconsistencies.To improve alignment, it is recommended that both systems run automatic checks at regular intervals to compare and match records. Daily or hourly reconciliations should be introduced to reduce timing differences. Clearer communication between departments that handle BROTA updates and those responsible for report generation is also needed to avoid mismatched data."

  Scenario: Trying to select two Origination Type
    And User selects a Origination Type "Issue Assurance" & "BAU"

  Scenario: Verifying that Market Conduct Risk Impact toggle is default No
    And User verify that Market Conduct Risk Impact is default No

  Scenario: Verifying that Market Conduct Risk Impact is clickable
    And User clicks on the Market Conduct Risk Impact toggle

  Scenario: Checking if Act Impacted accepts less than 1530 characters
    And User enters Act Impacted "The impacted act relates to the procedures and regulations governing financial data accuracy, control reporting, and internal compliance standards."

  Scenario: Checking if Act Impacted accepts more than 1530 characters
    And User enters Act Impacted "The act impacted mainly concerns internal control, financial reporting, and compliance with data accuracy standards that ensure transparent and reliable business operations. The alignment issues identified between the BROTA system and the Control Report have potential implications for compliance with internal financial control acts and data governance policies. These acts require all financial and operational data to be accurate, timely, and consistent across systems.If discrepancies between BROTA and Control Reports are not properly managed, they may result in reporting errors, delayed reconciliations, or inaccurate summaries being used for decision-making and audit purposes. This could affect compliance with internal audit procedures, data integrity standards, and other organizational acts that guide the preparation and approval of financial information.Furthermore, acts related to information accuracy, risk management, and system integrity could be impacted. Any delay or mismatch in recorded data might lead to incorrect control totals or transaction summaries, which can impact business assurance and accountability. The potential risk lies in failing to present a true reflection of financial activities, which could be viewed as a breach of reporting obligations if left unaddressed.To minimize impact, it is recommended that routine reconciliations be automated and that exception reports be generated to flag inconsistencies for timely correction. Departments responsible for data input and reporting should maintain open communication channels to ensure data alignment. Continuous monitoring, user training, and periodic compliance reviews should also be performed to maintain full alignment with internal and external control acts."

  Scenario: Checking if Dependency field accepts less than 255 characters
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters Dependency field "The dependency field represents the relationship between different data elements or system components, showing how one value or process relies on another."

  Scenario: Checking if Dependency field accepts more than 255 characters
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters Dependency field "The dependency field represents the relationship between different data elements or system components, showing how one value or process relies on another. It is important for ensuring that changes in one field do not negatively impact related fields, workflows, or calculations. By properly defining dependency fields, data integrity is maintained, and errors caused by inconsistent or missing information are minimized. Dependency fields are critical in complex systems where multiple processes interact, as they allow for accurate data propagation, conditional logic, and effective validation across the system."

  Scenario: Verifying if Recommendations field holds less than 1530 characters
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters Recommendations field "The recommendations field is a critical component used to document suggested actions, guidance, or best practices based on observations, findings, or analysis."

  Scenario: Verifying if Recommendations field holds more than 1530 characters
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters Recommendations field "The recommendations field is a critical component used to document suggested actions, guidance, or best practices based on observations, findings, or analysis. It serves as a formal mechanism to communicate what steps should be taken to address issues, improve processes, enhance system performance, or ensure compliance with internal and external standards. By providing clear and actionable recommendations, this field helps users understand the rationale behind each suggestion and the potential benefits of implementing it.Properly documented recommendations also support accountability and follow-up, ensuring that identified actions are tracked and completed in a timely manner. They act as a reference for decision-makers, auditors, and management, helping them to evaluate the effectiveness of corrective actions and improvements. In audits and reviews, the recommendations field ensures that lessons learned are captured and communicated, minimizing the risk of repeated errors or oversights.Additionally, the recommendations field can include priority levels, responsible parties, and expected timelines for completion, making it easier to manage tasks and monitor progress. It also provides a basis for continuous improvement, as organizations can analyze past recommendations to identify trends, recurring issues, and opportunities for process optimization.Overall, the recommendations field is essential for maintaining transparency, promoting accountability, and driving positive change within an organization. It ensures that findings and observations are translated into meaningful actions that strengthen systems, enhance accuracy, and support informed decision-making across departments."

  Scenario: Checking if Breach Description accepts characters more than 100
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters a Breach Description "Testing Breach Add Screen functionality and the way the system on the breach add screen section works of the breaches app"

  Scenario: Verifying Breach Description cannot accepts less than 100 characters
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters a Breach Description "Testing Breach Add Screen functionality"

  Scenario: Verifying that Attach files must be less than 30MB
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User attachs a file that is less than 30MB

  Scenario: Verifying that Attach files must be more than 30MB
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User attachs a file that is more than 30MB

  Scenario: Checking if a breach can be saved to draft
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters a Breach Description "Testing Breach Add Screen functionality"
    And User clicks Save in Draft & Next
    And User clicks Yes

  Scenario: Checking if a breach can be submitted successfully
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters a Breach Description "Testing Breach Add Screen functionality"
    And User clicks Submit & Next
    And User clicks Yes

  Scenario: Checking if the back arrow it's working
    And User clicks Back Arrow
    Then Breaches YTD Bashboard must be displayed In the screen

  Scenario: Checking if the Next button is working
    And User clicks Next
    Then New Breach next page must be displayed

  Scenario: Verify combined button (Submit & Next, Save as Draft & Next)
    And User enters monitoring title "Testing breach add screen"
    And user enters unique Reference No "220"
    And User choose a Breach Type "Compliance"
    And User selects a Risk/Compliance Status "Low"
    And User slects a Date Opened "06-Oct-2025"
    And User selects a Due Date "30-Nov-2026"
    And User selects a Origination Type "BAU"
    And User clicks Next
    And User enters a Breach Description "Testing Breach Add Screen functionality"
    And User clicks Save in Draft & Next
    And User clicks Yes
    And User clicks Back Arrow
    And User clicks Edit breach
    And User clicks Next
    And User clicks Submit & Next
    And User clicks Next
    And User clicks Back Arrow
