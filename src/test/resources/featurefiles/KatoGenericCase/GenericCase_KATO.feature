Feature: Generic Case KATO

  #*****************************************Customer Search*************************************************************************
  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC1 @Demo
  Scenario Outline: Create a Generic case manually from start search customer using Start research.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3          | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus       |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-InProgress |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | RDD Confirmation      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Withdrawn |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | New                |
      #| Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Order Modification - Item Level|		Default			| 1600-MSO Unilever Austria | 20-Sales Transactions               | New                |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC2 @Demo
  Scenario Outline: Determine the CFS and CP for Generic case created manually from start search customer using Start research.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<CFS>" and "<CP>" and "<CFSFlag>" and "<CPFlag>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | CFS                | CP                 | UpdateStatus       | CFSFlag | CPFlag |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula        | Resolved-Completed | Yes     | Yes    |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000001017 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara |                    | New                |         |        |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000543850 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Mohan Akula        | Ramakrishna Uppara | Pending-Response   | No      | No     |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0090096255 | Generic Case | Order Entry | Additional Order | Default | 1300-MSO Unilever Germany | 22-OOH                | 10-Common Division | Ramakrishna Uppara |                    | Pending-InProgress | Yes     | No     |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC3 @Demo
  Scenario Outline: Verify Message "Case can`t be created" when no CFS is assigned
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Verify the message case cannot be created "<Message>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | Message                                                                                              |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0090003099 | Generic Case | Case can`t be created. Customer does not have any CFS assigned, please contact the CFS administrator |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC4 @Demo
  Scenario Outline: Email Outbound for Purpose Of Email is Pending Resonse through Generic case created manually from start search customer using Start research.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on SendMail link
    And Click on Contact Person button
    And Select Contact Person checkbox
    And Click on Contact Person Submit button
    And Select purpose of email "<PurposeOfEmail>"
    And Select email destination "<EmailDestination>" from dropdown
    And Click on sendmail button
    And Click on Save button
    And Verify the Email Destination field in General Data tab is same as expected "<EmailDestination>"
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3          | SalesOrg                  | DistChannel           | Division           | ExpectedCFS         | ExpectedCP  | UpdateStatus     | PurposeOfEmail   | EmailDestination     |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Customer             |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Customer Development |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | 3rd Party Provider   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Finance              |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Upparai | Mohan Akula | Pending-Response | Pending Response | Logistic Warehouse   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Logistic Transport   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Ultralogistics       |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | MDM team             |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Planning             |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Trade Marketing      |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | Quality              |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | B2C Service provider |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara  | Mohan Akula | Pending-Response | Pending Response | IT Support Team      |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC5 @Demo
  Scenario Outline: Email Outbound for Purpose Of Email is Information Only through Generic case created manually from start search customer using Start research.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on SendMail link
    And Click on Contact Person button
    And Select Contact Person checkbox
    And Click on Contact Person Submit button
    And Select purpose of email "<PurposeOfEmail>"
    And Click on sendmail button
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus | PurposeOfEmail   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | New          | Information Only |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC6
  Scenario Outline: Email Inbound for Generic case created manually from start search customer using Start research.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CaseId>" into search field
    When click on Search icon
    # Then search results corresponding to "<CaseId>" should be displayed
    When Click on three dots button in search with case id
    And Click on start research button
    # And Verify the updated case status as "<UpdateStatus>"
    And Click on Email Information tab
    And Verify the reply email attachment is present for "<CaseId>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value | CaseId   | UpdateStatus     |
      # | manikumar.kosireddi@Areteanstech.com | Rules@123 | Cases | GC-3808 | Pending-InProgress |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Cases | GC-12277 | Pending-Response |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC7 @Demo
  Scenario Outline: Generic case Routing to Workbasket using Assign to Workbasket Option.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To Workbasket link
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    And Click on My Workbasket tab in Home page
    And Select workbasket "<WorkBasket>" from view Queue for dropdown
    And Click on Filter Icon on CaseID column in workbasket cases
    And Enter Case id into the case text textbox in workbasket cases
    And Click on Apply button
    And Verify the case id in workbasket cases
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                           | Password1   | Value     | CustomerNumber | ServiceCase  | type1             | type2                                            | type3                                      | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                    | Password2   | WorkBasket                         |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing  | Output Issues                                    | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Process control basket             |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Credit Management | Credit - Others                                  | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Validation Basket            |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry       | RDD Confirmation                                 | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Entry Basket                 |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing  | Others                                           | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Process control basket             |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation  | Customer Assortment/Product Distribution Control | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Validation Basket            |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management  | Logistic Claims                                  | Shortages                                  | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | UnileverO2C:Claims Logistic basket |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing  | Billing Block                                    | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Process control basket             |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry       | IDOC Blocked                                     | Idoc_Other                                 | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Entry Basket                 |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation  | Logistics                                        | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Validation Basket            |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry       | IDOC Blocked                                     | Idoc_Duplicate                             | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Entry Basket                 |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing  | Delay In return of POD to Unilever               | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Process control basket             |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry       | Product Issue                                    | Product not defined for correct sales area | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Entry Basket                 |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation  | MoQ/MoV - Aggregated Order                       | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Validation Basket            |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing  | Incomplete Billing                               | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Process control basket             |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Credit Management | Release Blocked Orders                           | Default                                    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Validation Basket            |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC8 @Demo
  Scenario Outline: Create a Generic case manually and verify the To Do List.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Case Status Remarks tab
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    And Click on Follow button
    And Click on Home tab
    And Click on Followed Cases tab
    And Click on Filter Icon on CaseID column in followed cases
    And Enter Case id into the case text textbox in followedcases
    And Click on Apply button
    And Verify the case id in followed cases
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3          | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus       |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Withdrawn |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-InProgress |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | New                |

  #Case Change Log scripts*****************************************************************************************************************
  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC9 @Demo
  Scenario Outline: Generic case Routing to CFS and Verfy case change log using Assign To CFS option.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    #And Click on Case Change Log tab
    #And Verify the case old value "<expected_oldvalue1>" and new value "<expected_newvalue1>" and case responsible "<expected_caseresponsible1>" under Case Change Log tab based on "<Actiontype>"
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To CFS button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    #And Click on case id in My Cases tab
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3   | SalesOrg                  | DistChannel           | Division           | UpdateStatus       | Username2                           | Password2   | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1   |
      | mohan.akula@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Work status          | Case Responsible          | New                      | Pending-InProgress       | mohan.akula@areteanstech.com      | ramakrishna.uppara@Areteanstech.com |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-Response   | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Work status          | Case Responsible          | New                      | Pending-Response         | mohan.akula@Areteanstech.com      | ramakrishna.uppara@Areteanstech.com |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | New                | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Work status          | Case Responsible          |                          | New                      | mohan.akula@Areteanstech.com      | ramakrishna.uppara@Areteanstech.com |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC10 @Demo
  Scenario Outline: Generic case Routing to Workbasket and Verify case change log using Assign to Workbasket Option.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To Workbasket link
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    And Click on My Workbasket tab in Home page
    And Select workbasket "<WorkBasket>" from view Queue for dropdown
    And Click on Filter Icon on CaseID column in workbasket cases
    And Enter Case id into the case text textbox in workbasket cases
    And Click on Apply button
    And Verify the case id in workbasket cases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                           | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2         | type3   | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                    | Password2   | WorkBasket             | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1   | expectedcaseresponsible_newvalue1 |
      | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing | Output Issues | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Process control basket | Work status          | Case Responsible          | New                      | Pending-InProgress       | ramakrishna.uppara@Areteanstech.com | Process control basket            |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC11 @Demo
  Scenario Outline: Generic case Routing to New Assignee and Verify case change log using Assign to New Assignee Option.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To New Assignee
    And Select the New Assignee "<NewAssignee>" and click on submit
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    #And Click on case id in My Cases tab
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2            | type3          | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                           | Password2   | NewAssignee                         | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1   |
      | mohan.akula@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | ramakrishna.uppara@Areteanstech.com | Rules@1234# | ramakrishna.uppara@Areteanstech.com | Work status          | Case Responsible          | New                      | Pending-InProgress       | mohan.akula@areteanstech.com      | ramakrishna.uppara@Areteanstech.com |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC12 @Demo
  Scenario Outline: Generic case Routing to Previous Assignee and Verify case change log using Assign to Previous Assignee Option.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To CFS button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    #And Click on case id in My Cases tab
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    And Click on Edit button after launching case from Mycases or MyWorkBasket tab
    And Click on OtherActions button
    And Click on UpdateStatus link
    Given Select status as "<UpdateStatus2>" in the Create Generic Case"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Edit button after launching case from Mycases or MyWorkBasket tab
    And Click on Assign To button
    And Click on Assign To Previous Assignee
    And Select the previous Assignee "<PrevoiusAssignee>" and click on submit
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    #And Click on case id in My Cases tab
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2           | type3  | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                           | Password2   | UpdateStatus2    | PrevoiusAssignee                    | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1   | expectedcaseresponsible_newvalue1 |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims | Return | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Pending-Response | ramakrishna.uppara@Areteanstech.com | Work status          | Case Responsible          | Pending-InProgress       | Pending-Response         | ramakrishna.uppara@Areteanstech.com | mohan.akula@Areteanstech.com      |

  @Smoke_GC_Kato @GC_Kato_TC13 @Demo
  Scenario Outline: Verify the case change log for statuses Resolved Completed and Resolved Withdrawn from To-Do List
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Case Status Remarks tab
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    #And Click on Home tab
    And Click on Followed Cases tab
    And Click on Filter Icon on CaseID column in followed cases
    And Enter Case id into the case text textbox in followedcases
    And Click on Apply button
    And Verify the case id in followed cases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                            | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus       | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1   | expectedcaseresponsible_newvalue1   |
      | mohan.akula@Areteanstech.com        | Rules@1234# | Customers |     0090096255 | Generic Case | Cash Application | Deduction - Logistics | Default | 1300-MSO Unilever Germany | 22-OOH                | 10-Common Division | Ramakrishna Uppara |             | Resolved-Withdrawn | Work status          | Case Responsible          | New                      | Resolved-Withdrawn       | mohan.akula@Areteanstech.com        | mohan.akula@Areteanstech.com        |
      | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed | Work status          | Case Responsible          | New                      | Resolved-Completed       | ramakrishna.uppara@Areteanstech.com | ramakrishna.uppara@Areteanstech.com |

  @Smoke_GC_Kato @GC_Kato_TC14 @Demo
  Scenario Outline: Verify the SLA and Expected Resolution Date Time
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CustomerNumber>" into search field
    When click on Search icon
    Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on three dots button
    And Click on start research button
    And Hover On Add Task button Pops
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    Then Verify the SLA "<ExpectedSLA>"
    And Verify the Expected Resolution Time
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | ExpectedSLA       |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | 40 hrs and 0 mins |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | 40 hrs and 0 mins |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Manual Order Entry    | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | 2 hrs and 0 mins  |

  #*********************************************Advance Search Customer***************************************************************************************
  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC15 @Demo
  Scenario Outline: Create a Generic case manually from Advance search customer.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3          | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus       |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0090096255 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1300-MSO Unilever Germany | 22-OOH                | 10-Common Division | Ramakrishna Uppara |             | Resolved-Withdrawn |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-InProgress |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | New                |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC16 @Demo
  Scenario Outline: Create a Generic case manually from Advance search customer using Create Generic Case.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    # Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on create generic case button in Advance search screen
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown in create generic case
    # And Click on Parties and Organization tab
    # And Select values from "<SalesOrg>" and "<DistChannel>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    Given Select status as "<UpdateStatus>" in the Create Generic Case"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3          | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus       |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Withdrawn |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000040129 | Generic Case | Claim Management | Logistic Claims       | Return         | 1300-MSO Unilever Germany | 21-Foodsolutions      | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-InProgress |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0090096255 | Generic Case | Order Validation | Duplicate Order       | Default        | 1300-MSO Unilever Germany | 22-OOH                | 10-Common Division | Ramakrishna Uppara |             | New                |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC17 @Demo
  Scenario Outline: Determine the CFS and CP for Generic case created manually using Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" and "<CFSFlag>" and "<CPFlag>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP         | UpdateStatus       | CFSFlag | CPFlag |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula        | Resolved-Completed | Yes     | Yes    |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000001017 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara |                    | New                |         |        |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000543850 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transaction  | 10-Common Division | Mohan Akula        | Ramakrishna Uppara | Pending-Response   | No      | No     |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0090096255 | Generic Case | Order Entry | Additional Order | Default | 1300-MSO Unilever Germany | 22-OOH                | 10-Common Division | Ramakrishna Uppara |                    | Pending-InProgress | Yes     | No     |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC18 @Demo
  Scenario Outline: Verify Message "Case can`t be created" when no CFS is assigned using Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Verify the message case cannot be created "<Message>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | Message                                                                                              |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0090003099 | Generic Case | Case can`t be created. Customer does not have any CFS assigned, please contact the CFS administrator |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC19 @Demo
  Scenario Outline: Email Outbound for Purpose Of Email is Pending Resonse through Generic case created manually using Advance Customer Search..
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on SendMail link
    And Click on Contact Person button
    And Select Contact Person checkbox
    And Click on Contact Person Submit button
    And Select purpose of email "<PurposeOfEmail>"
    And Select email destination "<EmailDestination>" from dropdown
    And Click on sendmail button
    And Click on Save button
    And Verify the Email Destination field in General Data tab is same as expected "<EmailDestination>"
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3          | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus     | PurposeOfEmail   | EmailDestination     |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Customer             |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Customer Development |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | 3rd Party Provider   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Finance              |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Logistic Warehouse   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Logistic Transport   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Ultralogistics       |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | MDM team             |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Planning             |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Trade Marketing      |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Quality              |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | B2C Service provider |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | IT Support Team      |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC20 @Demo
  Scenario Outline: Email Outbound for Purpose Of Email is Information Only through Generic case created manually using Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on SendMail link
    And Click on Contact Person button
    And Select Contact Person checkbox
    And Click on Contact Person Submit button
    And Select purpose of email "<PurposeOfEmail>"
    And Click on sendmail button
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus | PurposeOfEmail   |
      | Mohan.Akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | New          | Information Only |

  #Author U.Ramakrishna
  #@Smoke_GC_Kato @GC_Kato_TC21 @Demo
  #Scenario Outline: Email Inbound for Generic case created manually using Advance Customer Search..
  #Given Open the browser and navigate to the url
  #When I enter username as "<Username>"
  #And I enter password as "<Password>"
  #And I click on Login button
  #Then Login should be successful
  #And Select "<Value>" from search results dropdown
  #And Enter "<CaseId>" into search field
  #When click on Search icon
  #Then search results corresponding to "<CaseId>" should be displayed
  #When Click on three dots button in search with case id
  #And Click on start research button
  #And Verify the updated case status as "<UpdateStatus>"
  #And Click on Email Information tab
  #And Verify the reply email attachment is present for "<CaseId>"
  #When I click on Logout button
  #And I click on Logout
  #Then Logout should be successful
  #
  #Examples:
  #| Username                     | Password    | Value | CaseId   | UpdateStatus       |
  #| Mohan.Akula@Areteanstech.com | Rules@1234# | Cases | GC-10263 | Pending-InProgress |
  #| manikumar.kosireddi@Areteanstech.com | Rules@123 | Cases | GC-3807 | Pending-Response   |
  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC22 @Demo
  Scenario Outline: Generic case Routing to Workbasket using Assign to Workbasket Option in Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To Workbasket link
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    And Click on My Workbasket tab in Home page
    And Select workbasket "<WorkBasket>" from view Queue for dropdown
    And Click on Filter Icon on CaseID column in workbasket cases
    And Enter Case id into the case text textbox in workbasket cases
    And Click on Apply button
    And Verify the case id in workbasket cases
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                           | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2         | type3      | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                    | Password2   | WorkBasket              |
      | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing | Output Issues | Default    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Process control basket  |
      | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Customers |     0090096255 | Generic Case | Order Entry      | IDOC Blocked  | Idoc_Other | 1300-MSO Unilever Germany | 22-OOH                | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Entry Basket      |
      | ramakrishna.uppara@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Logistics     | Default    | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@1234# | Order Validation Basket |

  #  | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000431023 | Generic Case | Claim Management | Logistic Claims | Shortages | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@12345 | UnileverO2C:Claims Logistic basket |
  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC23 @Demo
  Scenario Outline: Create a Generic case manually and verify the To Do List in Advance Customer Search..
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Case Status Remarks tab
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    And Click on Follow button
    And Click on Home tab
    And Click on my work icon in Advance search screen
    And Click on Followed Cases tab
    And Click on Filter Icon on CaseID column in followed cases
    And Enter Case id into the case text textbox in followedcases
    And Click on Apply button
    And Verify the case id in followed cases
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3          | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus       |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Resolved-Withdrawn |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims       | Return         | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-InProgress |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-Response   |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Validation | Duplicate Order       | Default        | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | New                |

  #Case Change Log scripts*****************************************************************************************************************
  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC24 @Demo
  Scenario Outline: Generic case Routing to CFS and Verfy case change log using Assign To CFS option in Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    #And Click on Case Change Log tab
    #And Verify the case old value "<expected_oldvalue1>" and new value "<expected_newvalue1>" and case responsible "<expected_caseresponsible1>" under Case Change Log tab based on "<Actiontype>"
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To CFS button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    #And Click on case id in My Cases tab
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3   | SalesOrg                  | DistChannel           | Division           | UpdateStatus       | Username2                           | Password2   | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1   |
      | mohan.akula@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | ramakrishna.uppara@areteanstech.com | Rules@1234# | Work status          | Case Responsible          | New                      | Pending-InProgress       | mohan.akula@Areteanstech.com      | ramakrishna.uppara@areteanstech.com |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-Response   | ramakrishna.uppara@areteanstech.com | Rules@1234# | Work status          | Case Responsible          | New                      | Pending-Response         | mohan.akula@Areteanstech.com      | ramakrishna.uppara@areteanstech.com |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | New                | ramakrishna.uppara@areteanstech.com | Rules@1234# | Work status          | Case Responsible          |                          | New                      | mohan.akula@Areteanstech.com      | ramakrishna.uppara@areteanstech.com |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC25 @Demo
  Scenario Outline: Generic case Routing to Workbasket and Verify case change log using Assign to Workbasket Option in Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To Workbasket link
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    And Click on My Workbasket tab in Home page
    And Select workbasket "<WorkBasket>" from view Queue for dropdown
    And Click on Filter Icon on CaseID column in workbasket cases
    And Enter Case id into the case text textbox in workbasket cases
    And Click on Apply button
    And Verify the case id in workbasket cases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                           | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2         | type3   | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                    | Password2   | WorkBasket             | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1   | expectedcaseresponsible_newvalue1 |
      | ramakrishna.uppara@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Customer Billing | Output Issues | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | mohan.akula@Areteanstech.com | Rules@1234# | Process control basket | Work status          | Case Responsible          | New                      | Pending-InProgress       | ramakrishna.uppara@areteanstech.com | Process control basket            |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC26 @Demo
  Scenario Outline: Generic case Routing to New Assignee and Verify case change log using Assign to New Assignee Option in Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To New Assignee
    And Select the New Assignee "<NewAssignee>" and click on submit
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    #And Click on case id in My Cases tab
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2            | type3          | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                           | Password2   | NewAssignee                         | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1   |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order fulfilment | Stock Management | Quota Exceeded | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | ramakrishna.uppara@Areteanstech.com | Rules@1234# | ramakrishna.uppara@Areteanstech.com | Work status          | Case Responsible          | New                      | Pending-InProgress       | mohan.akula@Areteanstech.com      | ramakrishna.uppara@Areteanstech.com |

  #Author U.Ramakrishna
  @Smoke_GC_Kato @GC_Kato_TC27 @Demo
  Scenario Outline: Generic case Routing to Previous Assignee and Verify case change log using Assign to Previous Assignee Option in Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To CFS button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    #And Click on case id in My Cases tab
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    And Click on Edit button after launching case from Mycases or MyWorkBasket tab
    And Click on OtherActions button
    And Click on UpdateStatus link
    Given Select status as "<UpdateStatus2>" in the Create Generic Case"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Edit button after launching case from Mycases or MyWorkBasket tab
    And Click on Assign To button
    And Click on Assign To Previous Assignee
    And Select the previous Assignee "<PrevoiusAssignee>" and click on submit
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username1>"
    And I enter password as "<Password1>"
    And I click on Login button
    Then Login should be successful
    #And Click on case id in My Cases tab
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2           | type3  | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                           | Password2   | UpdateStatus2    | PrevoiusAssignee             | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1   |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims | Return | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Pending-InProgress | ramakrishna.uppara@areteanstech.com | Rules@1234# | Pending-Response | mohan.akula@Areteanstech.com | Work status          | Case Responsible          | Pending-InProgress       | Pending-Response         | mohan.akula@Areteanstech.com      | ramakrishna.uppara@areteanstech.com |

  @Smoke_GC_Kato @GC_Kato_TC28 @Demo
  Scenario Outline: Verify the case change log for statuses Resolved Completed and Resolved Withdrawn from To-Do List in Advance Customer Search.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Click on customer search icon in Advance search screen
    And Enter "<CustomerNumber>" into customer number field in Advance search screen
    When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    When Click on two dots button in Advance search screen
    And Click on start research button in Advance search screen
    And Hover On Add Task button Pops in Advance Search
    And Click on Add Task button in OtoC
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select the required "<ServiceCase>"
    And Click on the Add Tasks button
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    And Click on Save button
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Case Status Remarks tab
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    #And Click on Home tab
    And Click on Followed Cases tab
    And Click on Filter Icon on CaseID column in followed cases
    And Enter Case id into the case text textbox in followedcases
    And Click on Apply button
    And Verify the case id in followed cases
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP         | UpdateStatus       | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 |
      | mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000543850 | Generic Case | Cash Application | Deduction - Logistics | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Mohan Akula        | Ramakrishna Uppara | Resolved-Withdrawn | Work status          | Case Responsible          | New                      | Resolved-Withdrawn       | mohan.akula@Areteanstech.com      | mohan.akula@Areteanstech.com      |
      | mohan.akula@areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Order Entry      | Additional Order      | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula        | Resolved-Completed | Work status          | Case Responsible          | New                      | Resolved-Completed       | mohan.akula@Areteanstech.com      | mohan.akula@Areteanstech.com      |

  #Author U.Ramakrishna
  #@Smoke_GC_Kato @GC_Kato_TC29
  #Scenario Outline: Create a Generic case using Copy Case and verify SLA and Expected Resolution time.
  #Given Open the browser and navigate to the url
  #When I enter username as "<Username>"
  #And I enter password as "<Password>"
  #And I click on Login button
  #Then Login should be successful
  #And Select "<Value>" from search results dropdown
  #And Enter "<CustomerNumber>" into search field
  #When click on Search icon
  #Then search results corresponding to "<CustomerNumber>" should be displayed
  #When Click on three dots button
  #And Click on start research button
  #And Hover On Add Task button Pops
  #And Click on Add Task button in OtoC
  #And Select the required "<ServiceCase>"
  #And Click on the Add Tasks button
  #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
  #And Click on Parties and Organization tab
  #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
  #And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
  #And Click on Save button
  #Then Verify the Generic case is created
  #And Click on OtherActions button
  #And Click on Copy Case link
  #And Click on Save button
  #Then Verify the Generic case is created
  #And Verify the Expected Resolution Time
  #Then Verify the SLA "<ExpectedSLA>"
  #When I click on Logout button
  #And I click on Logout
  #Then Logout should be successful
  #
  #Examples:
  #| Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2           | type3  | SalesOrg                  | DistChannel           | Division           | ExpectedCFS        | ExpectedCP  | UpdateStatus       | ExpectedSLA       |
  #| mohan.akula@Areteanstech.com | Rules@1234# | Customers |     0000006351 | Generic Case | Claim Management | Logistic Claims | Return | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Ramakrishna Uppara | Mohan Akula | Pending-InProgress | 24 hrs and 0 mins |
  @Smoke_GC_Kato @GC_Kato_TC30 @Demo
  Scenario Outline: Advance Search end-to-end functionality
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    Then select Advance case search from left side panel
    And Enter "<Sales Organization>" number in the sales organization field
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown in advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then select "<Case Type>" as generic case and select "<Current Case Status>" as Pendinginprgress in advance search screen
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then Enter "<Sales Order Number>" in Advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then select current case responsbile "<CurrentCaseResponsible>" in advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then select case creator "<Case Creator>" in advance search screen
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then enter case number "<case number>" in advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen

    #And change case created from date in advance search
    Examples: 
      | Username   | Password  | Sales Organization | type1             | type2          | type3                | Case Type                                | Current Case Status | Sales Order Number | CurrentCaseResponsible | Case Creator    | case number |
      | Dummy.Remo | India123$ |               0001 | Credit Management | Credit Release | Review Risk Category | General Case Management - Credit Release | Pending-Action      |         0100882159 | ECC WB                 | sreekanthna.cfs | CR-10274    |
