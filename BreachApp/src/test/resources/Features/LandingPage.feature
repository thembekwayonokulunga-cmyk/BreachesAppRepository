Feature: User Authentication

  Background:
    Given the user navigates to the PowerApps URL
    And the user is redirected to the Microsoft sign-in page

  Scenario Outline: Sign in with valid user credentials - LP1_S1
    When the user enters <email> and <password>
    And the user clicks the "Sign In" button
    Then the user is successfully authenticated
    And the landing page is displayed

    Examples:
      | email                                      | password        |
      | bongisani.mabhena@intelliscient.co.za     | @Bongisani123   |

  Scenario Outline: Sign in with valid user credentials - LP1_S2
    When the user enters <email> and <password>
    And the user clicks the "Sign In" button
    Then the user is successfully authenticated
    And the landing page is displayed

    Examples:
      | email                                      | password        |
      | bongisani.mabhena@intelliscient.co.za     | @Bongisani123   |

  Scenario Outline: Sign in with valid user credentials - LP1_S3
    When the user enters <email> and <password>
    And the user clicks the "Sign In" button
    Then the user is successfully authenticated
    And the landing page is displayed

    Examples:
      | email                                      | password        |
      | bongisani.mabhena@intelliscient.co.za     | @Bongisani123   |

Feature: Breaches Dashboard - Pie Chart

  Background:
    Given the user is signed in as an initiator
    And the user is on the Breaches landing page

  Scenario: Verify pie chart of breaches is displayed - LP2_S1
    Then the pie chart of breaches is displayed

  Scenario Outline: Verify pie chart updates when creating a new breach - LP2_S2
    When the user creates a new breach with status = <status>
    Then the pie chart updates to reflect the new breach

    Examples:
      | status  |
      | Open    |

  Scenario Outline: Verify pie chart reflects status change immediately - LP2_S22
    Given the pie chart of breaches is displayed
    When the user updates the status of an existing breach from <old_status> to <new_status>
    Then the pie chart reflects the status change immediately

    Examples:
      | old_status | new_status |
      | Open       | Closed     |

  Scenario Outline: Verify pie chart when a specific status has no records - LP2_S3
    When the user applies a filter for breach status = <status>
    Then the pie chart shows no records for the <status> status

    Examples:
      | status  |
      | Closed  |

Feature: Actions Dashboard - Pie Chart

  Background:
    Given the user is signed in as an initiator
    And the user is on the Actions Dashboard

  Scenario: Verify actions pie chart is displayed - LP3_S1
    Then the actions pie chart is displayed
    When the user hovers over each slice of the pie chart
    Then the corresponding data is displayed

  Scenario Outline: Verify pie chart updates dynamically when action status changes - LP3_S2
    When the user updates an existing action status from <old_status> to <new_status>
    Then the pie chart updates dynamically

    Examples:
      | old_status | new_status  |
      | Open       | Completed   |

  Scenario Outline: Verify filter returns no matching actions - LP3_S3
    When the user navigates to the Actions Dashboard
    And the user applies a filter with status = <status>
    Then no matching actions are displayed

    Examples:
      | status  |
      | Closed  |

Feature: All Breaches View

  Background:
    Given the user is signed in as an initiator or user

  Scenario: View all breaches - LP4_S1
    When the user clicks the "All Breaches" button
    Then all breaches are displayed

  Scenario: Verify breaches displayed cover only the rolling 12 months - LP4_S2
    When the user clicks the "All Breaches" button
    Then the breaches displayed cover only the rolling 12 months

Feature: All Actions View

  Background:
    Given the user is signed in as an initiator or user

  Scenario: View all actions - LP5_S1
    When the user clicks the "All Actions" button
    Then all actions are displayed