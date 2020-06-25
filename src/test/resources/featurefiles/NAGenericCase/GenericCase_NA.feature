Feature: Generic Case NA

  #*****************************************Customer Search*************************************************************************
  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC1
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
    #And Click on Save button NA
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
    And Verify the updated case status as "<UpdateStatus>"
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                           | type3                                | SalesOrg               | DistChannel | Division | ExpectedCFS        | ExpectedCP  | UpdateStatus       |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                             | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Delivery Blocks                 | Over Volume                          | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-InProgress |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Order Modification - Item Level | Quantity increase                    | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Resolved-Withdrawn |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order fulfilment | Transport - Unloading           | Ship Project Load Consolidation      | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response   |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Master Data      | Customer Master Data            | CMIR (Customer Material Info Record) | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | New                |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC2
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3                           | SalesOrg               | DistChannel | Division | CFS                 | CP          | UpdateStatus       | CFSFlag | CPFlag |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                   | RDD Change - Compliance         | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | RamaKrishna Uppara  | Mohan Akula | Resolved-Completed | Yes     | Yes    |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030543369 | Generic Case | Order fulfilment | Transport - Unloading | Ship Project Load Consolidation | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Kokila Ramachandran |             | New                |         |        |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030515688 | Generic Case | Order Validation | Delivery Blocks       | Over Volume                     | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | RamaKrishna Uppara  | Mohan Akula | Pending-Response   | No      | No     |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030511707 | Generic Case | Order Entry      | RDD                   | RDD Change - Compliance         | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Mohan Akula         |             | Pending-InProgress | Yes     | No     |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC3
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
    And Click on Parties and Organization tab
    And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    And Verify the message case cannot be created "<Message>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | SalesOrg       | DistChannel | Division       | Message                                                                                              |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030000649 | Generic Case | 0001-US Retail | 10-Domestic | 12-Frozen Food | Case can`t be created. Customer does not have any CFS assigned, please contact the CFS administrator |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC4
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
    And Click on Save button NA
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
    And Click on Save button NA
    And Verify the Email Destination field in General Data tab is same as expected "<EmailDestination>"
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                             | type3                                | SalesOrg               | DistChannel | Division | ExpectedCFS        | ExpectedCP  | UpdateStatus     | PurposeOfEmail   | EmailDestination     |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                               | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Customer             |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Order Modification - Header Level | RDD Change - Ad Hoc                  | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | 3rd Party Provider   |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order fulfilment | Transport - Unloading             | Ship Project Load Consolidation      | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Finance              |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                               | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Logistic Warehouse   |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Master Data      | Customer Master Data              | CMIR (Customer Material Info Record) | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Logistic Transport   |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                               | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Ultralogistics       |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Incomplete Log                    | Plant                                | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | MDM team             |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                               | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Planning             |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Rejection code                    | FDTC (First Date to Customer )       | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Trade Marketing      |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                               | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Quality              |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Order Cancellation                | Default                              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | B2C Service provider |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                               | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | IT Support Team      |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Delivery Blocks                   | Short Lead Time                      | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response | Pending Response | Customer Development |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC5
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on SendMail link
    And Click on Contact Person button
    And Select Contact Person checkbox
    And Click on Contact Person Submit button
    And Select purpose of email "<PurposeOfEmail>"
    And Click on sendmail button
    And Click on Save button NA
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | type1       | type2 | type3                   | SalesOrg               | DistChannel | Division | ExpectedCFS        | ExpectedCP  | UpdateStatus | PurposeOfEmail   |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry | RDD   | RDD Change - Compliance | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | New          | Information Only |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC6
  Scenario Outline: Email Inbound for Generic case created manually from start search customer using Start research.
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful
    And Select "<Value>" from search results dropdown
    And Enter "<CaseId>" into search field
    When click on Search icon
    #Then search results corresponding to "<CaseId>" should be displayed
    When Click on three dots button in search with case id
    And Click on start research button
    #And Verify the updated case status as "<UpdateStatus>"
    And Click on Email Information tab
    And Verify the reply email attachment is present for "<CaseId>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value | CaseId   | UpdateStatus       |
      | sreekanthna.cfs | Rules@1234# | Cases | GC-11854 | Pending-InProgress |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC7
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
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
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
    And Click on My Workbasket tab in Home page
    And Select workbasket "<WorkBasket>" from view Queue for dropdown
    And Click on Filter Icon on CaseID column in workbasket cases NA
    And Enter Case id into the case text textbox in workbasket cases NA
    And Click on Apply button
    And Verify the case id in workbasket cases NA
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1 | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2                           | type3                   | SalesOrg               | DistChannel | Division | UpdateStatus1      | Username2       | Password2   | WorkBasket                          |
      | rkna.cfs  | Rules@1234# | Customers |     0030506568 | Generic Case | Order Entry      | RDD                             | RDD Change - Compliance | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-InProgress | sreekanthna.cfs | Rules@1234# | UnileverO2C:Order Entry Basket      |
      | rkna.cfs  | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Delivery Blocks                 | Over Volume             | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-Response   | sreekanthna.cfs | Rules@1234# | UnileverO2C:Order Validation Basket |
      | rkna.cfs  | Rules@1234# | Customers |     0030506568 | Generic Case | Order Validation | Order Modification - Item Level | Line item addition      | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | New                | sreekanthna.cfs | Rules@1234# | UnileverO2C:Order Validation Basket |

  #  | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000431023 | Generic Case | Claim Management | Logistic Claims | Shortages | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@12345 | UnileverO2C:Claims Logistic basket |
  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC8
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
    And Verify the updated case status as "<UpdateStatus>"
    And Click on Case Status Remarks tab
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    And Click on Follow button
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
    And Click on Followed Cases tab
    And Click on Filter Icon on CaseID column in followed cases
    And Enter Case id into the case text textbox in followedcases
    And Click on Apply button
    And Verify the case id in followed cases
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                             | type3                                | SalesOrg               | DistChannel | Division | ExpectedCFS        | ExpectedCP  | UpdateStatus       |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                               | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Resolved-Completed |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Master Data      | Customer Master Data              | CMIR (Customer Material Info Record) | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Resolved-Withdrawn |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Order Modification - Header Level | RDD Change - Ad Hoc                  | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-InProgress |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Order Cancellation                | Default                              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-Response   |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Rejection code                    | FDTC (First Date to Customer )       | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | New                |

  #Case Change Log scripts*****************************************************************************************************************
  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC9
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    #And Click on Case Change Log tab
    #And Verify the case old value "<expected_oldvalue1>" and new value "<expected_newvalue1>" and case responsible "<expected_caseresponsible1>" under Case Change Log tab based on "<Actiontype>"
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
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
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    #And Click on case id in My Cases tab
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1       | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2                | type3                                | SalesOrg               | DistChannel | Division | UpdateStatus       | Username2 | Password2   | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD                  | RDD Change - Compliance              | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-InProgress | rkna.cfs  | Rules@1234# | Work status          | Case Responsible          | New                      | Pending-InProgress       | sreekanthna.cfs                   | rkna.cfs                          |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Master Data      | Customer Master Data | CMIR (Customer Material Info Record) | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-Response   | rkna.cfs  | Rules@1234# | Work status          | Case Responsible          | New                      | Pending-Response         | sreekanthna.cfs                   | rkna.cfs                          |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Rejection code       | FDTC (First Date to Customer )       | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-InProgress | rkna.cfs  | Rules@1234# | Work status          | Case Responsible          | New                      | Pending-InProgress       | sreekanthna.cfs                   | rkna.cfs                          |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC10
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
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
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
    And Click on My Workbasket tab in Home page
    And Select workbasket "<WorkBasket>" from view Queue for dropdown
    And Click on Filter Icon on CaseID column in workbasket cases NA
    And Enter Case id into the case text textbox in workbasket cases NA
    And Click on Apply button
    And Verify the case id in workbasket cases NA
    #And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1 | Password1   | Value     | CustomerNumber | ServiceCase  | type1       | type2 | type3                   | SalesOrg               | DistChannel | Division | UpdateStatus1      | Username2       | Password2   | WorkBasket                     | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 |
      | rkna.cfs  | Rules@1234# | Customers |     0030506568 | Generic Case | Order Entry | RDD   | RDD Change - Compliance | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-InProgress | sreekanthna.cfs | Rules@1234# | UnileverO2C:Order Entry Basket | Work status          | Case Responsible          | New                      | Pending-InProgress       | rkna.cfs                          | Order Entry Basket                |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC11
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Edit button
    And Click on Assign To button
    And Click on Assign To New Assignee
    And Select the New Assignee "<NewAssignee>" and click on submit NA
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<Username2>"
    And I enter password as "<Password2>"
    And I click on Login button
    Then Login should be successful
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    #And Click on case id in My Cases tab
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username1 | Password1   | Value     | CustomerNumber | ServiceCase  | type1       | type2 | type3                   | SalesOrg               | DistChannel | Division | UpdateStatus1      | Username2       | Password2   | NewAssignee     | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 |
      | rkna.cfs  | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry | RDD   | RDD Change - Compliance | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-InProgress | sreekanthna.cfs | Rules@1234# | sreekanthna.cfs | Work status          | Case Responsible          | New                      | Pending-InProgress       | rkna.cfs                          | sreekanthna.cfs                   |

  #Author U.Ramakrishna
  @Smoke_GC_NA @GC_NA_TC12
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus1>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
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
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases
    And Enter Case id into the case text textbox in mycases
    And Click on Apply button
    And Verify the case id in mycases
    And Click on Edit button after launching case from Mycases or MyWorkBasket tab
    And Click on OtherActions button
    And Click on UpdateStatus link
    Given Select status as "<UpdateStatus2>" in the Create Generic Case"
    And Click on Submit button in update status pop up
    And Click on Save button NA
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
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
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
      | Username1       | Password1   | Value     | CustomerNumber | ServiceCase  | type1       | type2 | type3                   | SalesOrg               | DistChannel | Division | UpdateStatus1      | Username2 | Password2   | UpdateStatus2    | PrevoiusAssignee | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry | RDD   | RDD Change - Compliance | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-InProgress | rkna.cfs  | Rules@1234# | Pending-Response | sreekanthna.cfs  | Work status          | Case Responsible          | Pending-InProgress       | Pending-Response         | sreekanthna.cfs                   | rkna.cfs                          |

  @Smoke_GC_NA @GC_NA_TC13
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
    And Click on Save button NA
    Then Verify the Generic case is created
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus>"
    And Click on Submit button in update status pop up
    And Click on Save button NA
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
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
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
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2          | type3                      | SalesOrg               | DistChannel | Division | ExpectedCFS        | ExpectedCP  | UpdateStatus       | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030506568 | Generic Case | Order Entry      | RDD            | RDD Change - Compliance    | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | RamaKrishna Uppara | Mohan Akula | Resolved-Withdrawn | Work status          | Case Responsible          | New                      | Resolved-Withdrawn       | sreekanthna.cfs                   | sreekanthna.cfs                   |
      | rkna.cfs        | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Rejection code | No CMIR Incorrect UPC (A3) | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | RamaKrishna Uppara | Mohan Akula | Resolved-Completed | Work status          | Case Responsible          | New                      | Resolved-Completed       | rkna.cfs                          | rkna.cfs                          |

  @Smoke_GC_NA @GC_NA_TC14
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
    And Click on Save button NA
    Then Verify the Generic case is created
    Then Verify the SLA "<ExpectedSLA>"
    And Verify the Expected Resolution Time
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username        | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2           | type3                   | SalesOrg               | DistChannel | Division | ExpectedCFS        | ExpectedCP  | UpdateStatus       | ExpectedSLA       |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Resolved-Withdrawn |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Validation | Delivery Blocks | Sales Area Block        | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-InProgress | 24 hrs and 0 mins |
      | sreekanthna.cfs | Rules@1234# | Customers |     0030001613 | Generic Case | Order Entry      | RDD             | RDD Change - Compliance | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Ramakrishna Uppara | Mohan Akula | Pending-InProgress | 4 hrs and 0 mins  |

  #*********************************************Advance Search Customer***************************************************************************************
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC15
  #Scenario Outline: Create a Generic case manually from Advance search customer.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Follow button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username   | Password  | Value     | CustomerNumber | ServiceCase  | type1       | type2 | type3                   | SalesOrg | DistChannel | Division | ExpectedCFS           | ExpectedCP          | UpdateStatus       |
      #| SivaNA.CFS | pEGA@1234 | Customers |     0030004423 | Generic Case | Order Entry | RDD   | RDD Change - Compliance | 0001-    | 10-         | 40-      | abhinash kotikalapudi | Manikumar Kosireddi | Resolved-Completed |

  # | Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Resolved-Withdrawn |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims       | Return         | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Pending-InProgress |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Pending-Response   |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Validation | Duplicate Order       | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | New                |
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC16
  #Scenario Outline: Create a Generic case manually from Advance search customer using Create Generic Case.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    # Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on create generic case button in Advance search screen
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown in create generic case
    # And Click on Parties and Organization tab
    # And Select values from "<SalesOrg>" and "<DistChannel>"
    #And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #Given Select status as "<UpdateStatus>" in the Create Generic Case"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Follow button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username   | Password  | Value     | CustomerNumber | ServiceCase  | type1       | type2 | type3                   | SalesOrg | DistChannel | Division | ExpectedCFS           | ExpectedCP          | UpdateStatus       |
      #| SivaNA.CFS | pEGA@1234 | Customers |     0030004423 | Generic Case | Order Entry | RDD   | RDD Change - Compliance | 0001-    | 10-         | 40-      | abhinash kotikalapudi | Manikumar Kosireddi | Resolved-Completed |
#
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Resolved-Withdrawn |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims       | Return         | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Pending-InProgress |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Pending-Response   |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Validation | Duplicate Order       | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | New                |
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC17
  #Scenario Outline: Determine the CFS and CP for Generic case created manually using Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Verify the CFS and CP using "<CFS>" and "<CP>" and "<CFSFlag>" and "<CPFlag>" in generic case
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Follow button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | CFS                   | CP             | UpdateStatus       | CFSFlag | CPFlag |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Entry | Additional Order | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar     | Resolved-Completed | Yes     | Yes    |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000001017 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Alex Dummy            |                | New                |         |        |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000543850 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Aleksandra Dummy      | Donny Petrolli | Pending-Response   | No      | No     |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0090096255 | Generic Case | Order Entry | Additional Order | Default | 1300-MSO Unilever Germany | 22-OOH                | 10-Common Division | Justyna Dummy         |                | Pending-InProgress | Yes     | No     |
#
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC18
  #Scenario Outline: Verify Message "Case can`t be created" when no CFS is assigned using Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Verify the message case cannot be created "<Message>"
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username                     | Password    | Value     | CustomerNumber | ServiceCase  | Message                                                                                              |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0090003099 | Generic Case | Case can`t be created. Customer does not have any CFS assigned, please contact the CFS administrator |
#
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC19
  #Scenario Outline: Email Outbound for Purpose Of Email is Pending Resonse through Generic case created manually using Advance Customer Search..
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on SendMail link
    #And Click on Contact Person button
    #And Select Contact Person checkbox
    #And Click on Contact Person Submit button
    #And Select purpose of email "<PurposeOfEmail>"
    #And Select email destination "<EmailDestination>" from dropdown
    #And Click on sendmail button
    #And Click on Save button
    #And Verify the Email Destination field in General Data tab is same as expected "<EmailDestination>"
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Follow button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS           | ExpectedCP | UpdateStatus     | PurposeOfEmail   | EmailDestination |
      #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Customer         |

  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims       | Return         | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Customer Development |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | 3rd Party Provider   |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Validation | Duplicate Order       | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Finance              |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Logistic Warehouse   |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims       | Return         | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Logistic Transport   |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Ultralogistics       |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Validation | Duplicate Order       | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | MDM team             |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Entry      | Additional Order      | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Planning             |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Trade Marketing      |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims       | Return         | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | Quality              |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | B2C Service provider |
  #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Validation | Duplicate Order       | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-Response | Pending Response | IT Support Team      |
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC20
  #Scenario Outline: Email Outbound for Purpose Of Email is Information Only through Generic case created manually using Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on SendMail link
    #And Click on Contact Person button
    #And Select Contact Person checkbox
    #And Click on Contact Person Submit button
    #And Select purpose of email "<PurposeOfEmail>"
    #And Click on sendmail button
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Follow button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS           | ExpectedCP | UpdateStatus | PurposeOfEmail   |
      #| Mohan.Akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order Entry | Additional Order | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | New          | Information Only |

  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC21
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
  #Examples:
  #| Username                             | Password  | Value | CaseId  | UpdateStatus       |
  #| manikumar.kosireddi@Areteanstech.com | Rules@123 | Cases | GC-3808 | Pending-InProgress |
  #| manikumar.kosireddi@Areteanstech.com | Rules@123 | Cases | GC-3807 | Pending-Response   |
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC22
  #Scenario Outline: Generic case Routing to Workbasket using Assign to Workbasket Option in Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username1>"
    #And I enter password as "<Password1>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus1>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus1>"
    #And Click on Edit button
    #And Click on Assign To button
    #And Click on Assign To Workbasket link
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
    #When I enter username as "<Username2>"
    #And I enter password as "<Password2>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on My Workbasket tab in Home page
    #And Select workbasket "<WorkBasket>" from view Queue for dropdown and click on case id
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username1 | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2         | type3   | SalesOrg               | DistChannel | Division | UpdateStatus1      | Username2       | Password2   | WorkBasket             |
      #| rkna.cfs  | Rules@1234# | Customers |     0030506568 | Generic Case | Customer Billing | Output Issues | Default | 0003-CA Food Solutions | 10-Domestic | 16-Dry   | Pending-InProgress | sreekanthna.cfs | Rules@1234# | Process control basket |
#
  #  | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000431023 | Generic Case | Claim Management | Logistic Claims | Shortages | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@12345 | UnileverO2C:Claims Logistic basket |
  # | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000431023 | Generic Case | Order Entry      | IDOC Blocked    | Idoc_Other | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@12345 | UnileverO2C:Order Entry Basket      |
  # | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000431023 | Generic Case | Order Validation | Logistics       | Default    | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | Mohan.Akula@Areteanstech.com | Rules@12345 | UnileverO2C:Order Validation Basket |
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC23
  #Scenario Outline: Create a Generic case manually and verify the To Do List in Advance Customer Search..
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Case Status Remarks tab
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    #And Click on Follow button
    #And Click on Home tab
    #And Click on Followed Cases tab
    #And Click on Filter Icon on CaseID column
    #And Enter Case id into the case text textbox
    #And Click on Apply button
    #And Verify the case id
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username                               | Password  | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS | ExpectedCP       | UpdateStatus       |
      #| abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000543850 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Alex Dummy  | Anderson Foister | Resolved-Completed |
#
  #| abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Resolved-Withdrawn |
  #| abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims       | Return         | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Pending-InProgress |
  #| abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000088243 | Generic Case | Order fulfilment | Stock Management      | Quota Exceeded | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | Pending-Response   |
  #| abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000088243 | Generic Case | Order Validation | Duplicate Order       | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar       | New                |
  #Case Change Log scripts*****************************************************************************************************************
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC24
  #Scenario Outline: Generic case Routing to CFS and Verfy case change log using Assign To CFS option in Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username1>"
    #And I enter password as "<Password1>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on Case Change Log tab
    #And Verify the case old value "<expected_oldvalue1>" and new value "<expected_newvalue1>" and case responsible "<expected_caseresponsible1>" under Case Change Log tab based on "<Actiontype>"
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Edit button
    #And Click on Assign To button
    #And Click on Assign To CFS button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
    #When I enter username as "<Username2>"
    #And I enter password as "<Password2>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on case id in My Cases tab
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2                 | type3   | SalesOrg                  | DistChannel           | Division           | UpdateStatus       | Username2                              | Password2 | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1      |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Work status          | Case Responsible          | New                      | Pending-InProgress       | mohan.akula@Areteanstech.com      | abhinash.kotikalapudi@Areteanstech.com |
#
  # | mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-Response   | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Work status          | Case Responsible          | New                      | Pending-Response         | mohan.akula@Areteanstech.com      | abhinash.kotikalapudi@Areteanstech.com |
  # | mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | New                | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Work status          | Case Responsible          |                          | New                      | mohan.akula@Areteanstech.com      | abhinash.kotikalapudi@Areteanstech.com |
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC25
  #Scenario Outline: Generic case Routing to Workbasket and Verify case change log using Assign to Workbasket Option in Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username1>"
    #And I enter password as "<Password1>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus1>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus1>"
    #And Click on Edit button
    #And Click on Assign To button
    #And Click on Assign To Workbasket link
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
    #When I enter username as "<Username2>"
    #And I enter password as "<Password2>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on My Workbasket tab in Home page
    #And Select workbasket "<WorkBasket>" from view Queue for dropdown and click on case id
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username1                              | Password1 | Value     | CustomerNumber | ServiceCase  | type1            | type2         | type3   | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                    | Password2   | WorkBasket                         | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1      | expectedcaseresponsible_newvalue1  |
      #| abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000431023 | Generic Case | Customer Billing | Output Issues | Default | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | mohan.akula@Areteanstech.com | Rules@12345 | UnileverO2C:Process control basket | Work status          | Case Responsible          | New                      | Pending-InProgress       | abhinash.kotikalapudi@Areteanstech.com | UnileverO2C:Process control basket |
#
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC26
  #Scenario Outline: Generic case Routing to New Assignee and Verify case change log using Assign to New Assignee Option in Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username1>"
    #And I enter password as "<Password1>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus1>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus1>"
    #And Click on Edit button
    #And Click on Assign To button
    #And Click on Assign To New Assignee
    #And Select the New Assignee "<NewAssignee>" and click on submit
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
    #When I enter username as "<Username2>"
    #And I enter password as "<Password2>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on case id in My Cases tab
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2            | type3          | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                              | Password2 | NewAssignee                            | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1      |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Order fulfilment | Stock Management | Quota Exceeded | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | abhinash.kotikalapudi@Areteanstech.com | Work status          | Case Responsible          | New                      | Pending-InProgress       | mohan.akula@Areteanstech.com      | abhinash.kotikalapudi@Areteanstech.com |
#
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC27
  #Scenario Outline: Generic case Routing to Previous Assignee and Verify case change log using Assign to Previous Assignee Option in Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username1>"
    #And I enter password as "<Password1>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus1>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus1>"
    #And Click on Edit button
    #And Click on Assign To button
    #And Click on Assign To CFS button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
    #When I enter username as "<Username2>"
    #And I enter password as "<Password2>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on case id in My Cases tab
    #And Click on Edit button after launching case from Mycases or MyWorkBasket tab
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #Given Select status as "<UpdateStatus2>" in the Create Generic Case"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus2>"
    #And Click on Edit button after launching case from Mycases or MyWorkBasket tab
    #And Click on Assign To button
    #And Click on Assign To Previous Assignee
    #And Select the previous Assignee "<PrevoiusAssignee>" and click on submit
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
    #When I enter username as "<Username1>"
    #And I enter password as "<Password1>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on case id in My Cases tab
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username1                    | Password1   | Value     | CustomerNumber | ServiceCase  | type1            | type2           | type3  | SalesOrg                  | DistChannel           | Division           | UpdateStatus1      | Username2                              | Password2 | UpdateStatus2    | PrevoiusAssignee             | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1      | expectedcaseresponsible_newvalue1 |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims | Return | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | Pending-InProgress | abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Pending-Response | mohan.akula@Areteanstech.com | Work status          | Case Responsible          | Pending-InProgress       | Pending-Response         | abhinash.kotikalapudi@Areteanstech.com | mohan.akula@Areteanstech.com      |
#
  #@Smoke_GC_NA @GC_NA_TC28
  #Scenario Outline: Verify the case change log for statuses Resolved Completed and Resolved Withdrawn from To-Do List in Advance Customer Search.
    #Given Open the browser and navigate to the url
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on customer search icon in Advance search screen
    #And Enter "<CustomerNumber>" into customer number field in Advance search screen
    #When Click on Search button in Advance search screen
    #Then search results corresponding to "<CustomerNumber>" should be displayed
    #When Click on two dots button in Advance search screen
    #And Click on start research button in Advance search screen
    #And Hover On Add Task button Pops in Advance Search
    #And Click on Add Task button in OtoC
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select the required "<ServiceCase>"
    #And Click on the Add Tasks button
    #And Select values from "<type1>" and "<type2>" and "<type3>" dropdown
    #And Click on Parties and Organization tab
    #And Select values from "<SalesOrg>" and "<DistChannel>" and "<Division>"
    #And Verify the CFS and CP using "<ExpectedCFS>" and "<ExpectedCP>" in generic case
    #And Click on Save button
    #Then Verify the Generic case is created
    #And Click on Edit button
    #And Click on OtherActions button
    #And Click on UpdateStatus link
    #And Select status as "<UpdateStatus>"
    #And Click on Submit button in update status pop up
    #And Click on Save button
    #And Verify the updated case status as "<UpdateStatus>"
    #And Click on Case Status Remarks tab
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus>"
    #And Click on Follow button
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
    #When I enter username as "<Username>"
    #And I enter password as "<Password>"
    #And I click on Login button
    #Then Login should be successful
    #And Click on Home tab
    #And Click on Followed Cases tab
    #And Click on Filter Icon on CaseID column
    #And Enter Case id into the case text textbox
    #And Click on Apply button
    #And Verify the case id
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    #When I click on Logout button
    #And I click on Logout
    #Then Logout should be successful
#
    #Examples: 
      #| Username                               | Password  | Value     | CustomerNumber | ServiceCase  | type1       | type2            | type3   | SalesOrg                  | DistChannel           | Division           | ExpectedCFS | ExpectedCP       | UpdateStatus       | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1 | expectedcaseresponsible_oldvalue1      | expectedcaseresponsible_newvalue1      |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Cash Application | Deduction - Logistics | Default        | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Resolved-Withdrawn | Work status          | Case Responsible          | New                      | Resolved-Withdrawn       | mohan.akula@Areteanstech.com      | mohan.akula@Areteanstech.com      |
      #| abhinash.kotikalapudi@Areteanstech.com | Pega1234$ | Customers |     0000543850 | Generic Case | Order Entry | Additional Order | Default | 1600-MSO Unilever Austria | 20-Sales Transactions | 10-Common Division | Alex Dummy  | Anderson Foister | Resolved-Completed | Work status          | Case Responsible          | New                      | Resolved-Completed       | abhinash.kotikalapudi@Areteanstech.com | abhinash.kotikalapudi@Areteanstech.com |
#
  #Author U.Ramakrishna
  #@Smoke_GC_NA @GC_NA_TC29
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
      #| Username                     | Password    | Value     | CustomerNumber | ServiceCase  | type1            | type2           | type3  | SalesOrg                  | DistChannel           | Division           | ExpectedCFS           | ExpectedCP | UpdateStatus       | ExpectedSLA       |
      #| mohan.akula@Areteanstech.com | Rules@12345 | Customers |     0000088243 | Generic Case | Claim Management | Logistic Claims | Return | 1300-MSO Unilever Germany | 20-Sales Transactions | 10-Common Division | abhinash kotikalapudi | Mani Kumar | Pending-InProgress | 24 hrs and 0 mins |
