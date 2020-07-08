Feature: Credit Release

  #********************************Manual Intervention*****************************************************
  #Authors U.Ramakrishna, Mohan Sreekanth
  @ManualIntervention_UpdateStatuses @CRNA_TC_001 @CRNA
  Scenario Outline: Manual Intervention-Creating case using Pega Bot and update the case to different statuses
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameCFS>" and "<PasswordCFS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus2>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus2>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus2>"
    #And Click on Follow button
    #And Click on Home tab
    And Click on close tab
    And Click on My Reports Tab
    And Click on BRE log link
    And Wait for the bot response Auto
    And Verify BRE log status
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameCFS | PasswordCFS | UpdateStatus1  | UpdateStatus2      | value1        | value2                | value3                      | BOTStatus | Type3               |
      |              0003 |                  10 |      16 | CAD      | Z                    |     0030045988 | 0030045988 | 0030045988 |    25000000 |              100 | 05-08-2020 |       1 |            40 |            26000000 | Dummy.Kurt  | rules@0101  | Pending-Action | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   | Manual Intervention |

  #|              0002 |                  10 |      16 | USD      | X                    |     0030001382 | 0030001382 | 0030023606 |    50000000 |              100 | 10-07-2020 |       5 |            35 |            60000000 | Dummy.Kurt | rules@0101 | Pending-Action | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB |
  #|              0001 |                  10 |      16 | USD      | H                    |     0030001125 | 0030001125 | 0030023426 |    25000000 |              100 | 15-07-2020 |      10 |            25 |          1003579.59 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-Response   | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB |
  #|              0007 |                  10 |      16 | CAD      | I                    |     0030038161 | 0030038161 | 0030025715 |    20000000 |              100 | 10-07-2020 |       5 |            35 |            30000000 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-Action     | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB |
  #Authors U.Ramakrishna, Mohan Sreekanth
  @ManualIntervention_CancelOrder @CRNA_TC_002 @CRNA
  Scenario Outline: Manual Intervention-Creating case using Pega Bot and Cancel the Order
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Click on Cancel Order link
    And Verify the validation message "<Message>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus2>"
    And Wait for the bot response
    #And Run the pegabot API to change the status from acknowledgement to resolved completed
    #And Verify the updated case status as "<UpdateStatus3>"
    #And Wait for the bot response
    #And Wait for ECC Acknowledgement
    And Verify the updated case status as "<UpdateStatus4>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | Username   | Password   | UpdateStatus1  | UpdateStatus2          | UpdateStatus3                 | UpdateStatus4      | Message                                                       | value1        | value2                | value3                      | BOTStatus | Type3               |
      |              0001 |                  10 |      16 | USD      | X                    |     0030001125 | 0030001125 | 0030023426 |     9000000 |              100 | 10-07-2034 |       5 |            35 |            10000000 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | The order will be closed in SAP once the request is submitted | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   | Manual Intervention |

  #|              0002 |                  10 |      16 | USD      | H                    |     0030001382 | 0030001382 | 0030023606 |    80000000 |               90 | 17-06-2020 |     257 |            45 |            90000000 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | The order will be closed in SAP once the request is submitted | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   |
  #|              0003 |                  10 |      16 | CAD      | I                    |     0030043309 | 0030043309 | 0030043308 |   120000000 |               40 | 17-07-2020 |     240 |            50 |           250000000 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | The order will be closed in SAP once the request is submitted | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   |
  #|              0007 |                  10 |      30 | CAD      | Z                    |     0030040036 | 0030040036 | 0030040036 |     6000000 |               70 | 14-07-2020 |  427.00 |         39.89 |            11000000 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | The order will be closed in SAP once the request is submitted | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   |
  #********************************Auto Release*****************************************************
  #Authors U.Ramakrishna, Mohan Sreekanth
  @AutoRelease_greaterthan3days @AutoRelease
  Scenario Outline: Auto Release-Creating case using Pega Bot and update the case status to Resolved Completed greater than 3 days
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>"
    When User Clicks on the case id
    #And Verify the updated case status as "<UpdateStatus1>"
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Follow button
    And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus4>"
    And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | Username   | Password   | UpdateStatus1       | UpdateStatus2          | UpdateStatus3                 | UpdateStatus4      |
      |              0001 |                  10 |      16 | USD      | F                    |     0030001125 | 0030001125 | 0030023426 |     9000000 |              100 | 16-06-2020 |       0 |            15 |            10000000 | Dummy.Kurt | rules@0101 | Pending-BOTResponse | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @bot3 @AutoRelease
  Scenario Outline: TL Review Using Change RDD-Creating case using Pega Bot and update the case to different statuses by Rejecting the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Click on Approve Reject link
    And Select status as "<ChooseActionValue>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus2>"
    #Then Verify the Generic case is created
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    # And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus4>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | ChooseActionValue | UpdateStatus3  | UsernameCFS | PasswordCFS | ManualOrderRevisionValue | UpdateStatus4      |
      |              0003 |                  10 |      16 | CAD      | F                    |     0030045988 | 0030045988 | 0030045988 |     9000000 |              100 | 17-07-2020 |       0 |            19 |             1900000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Line Item Cancellation   | Resolved-Completed |

  #********************************Review Risk category*****************************************************
  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory_ApproveByRS @CRNA_TC_003 @CRNA
  Scenario Outline: Review Risk Category-Creating case using Pega Bot and update the case to different statuses by Approving the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value1>" and "<value2>"
    And Click on Approve Reject link
    And Select status as "<UpdateStatus2>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | UpdateStatus2 | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | value1    | value2           | BOTStatus | UpdateStatus  | Type3                |
      #|              0003 |                  10 |      16 | CAD      | Y                    |     0030045988 | 0030045988 | 0030045988 |       10000 |              100 | 18-07-2020 |       0 |            19 |               20000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Send Mail | Approve / Reject | Success   |
      |              0007 |                  10 |      11 | CAD      | P                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |               60 | 21-07-2030 |     295 |            39 |             2000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Send Mail | Approve / Reject | Success   | Update Status | Review Risk Category |

  #|              0001 |                  10 |      30 | USD      | N                    |     0030341803 | 0030341803 | 0030341802 |    40000000 |               50 | 30-07-2020 |  415.00 |         43.67 |            50000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Send Mail | Approve / Reject | Success   |
  #|              0002 |                  10 |      16 | USD      | Q                    |     0030001382 | 0030001382 | 0030023606 |     9990000 |              150 | 30-07-2020 |  426.95 |         13.67 |            19000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Send Mail | Approve / Reject | Success   |
  @ReviewRiskCategory_ApproveByRS_LessThan3days_UpdateRDD @CRNA_TC_004 @CRNA
  Scenario Outline: Review Risk Category-Creating case using Pega Bot PGI date check <=3days,update RDD and the case will navigate from Revenuespecialst to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value1>" and "<value2>"
    And Click on Approve Reject link
    And Select status as "<UpdateStatus2>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    And Verify the updated case status as "<UpdateStatus6>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | UpdateStatus2 | UpdateStatus3  | value1    | value2           | UpdateStatus  | OtherActionsValue | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | BOTStatus | Type3                |
      |              0002 |                  10 |      16 | USD      | Q                    |     0030001382 | 0030001382 | 0030023606 |     9990000 |              150 | 25-06-2015 |  426.95 |         13.67 |            19000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Approve       | Pending-Action | Send Mail | Approve / Reject | Update Status | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Success   | Review Risk Category |

  @ReviewRiskCategory_ApproveByRS_lessthan3days_updatestatus @CRNA_TC_005 @CRNA
  Scenario Outline: Review Risk Category-Creating case using Pega Bot PGI date check <=3days,Update Status and the case will navigate from Revenuespecialst to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value1>" and "<value2>"
    And Click on Approve Reject link
    And Select status as "<UpdateStatus2>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus4>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | value1    | value2           | UpdateStatus2 | UpdateStatus3  | UpdateStatus4      | UpdateStatus  | BOTStatus | Type3                |
      |              0002 |                  10 |      16 | USD      | L                    |     0030001382 | 0030001382 | 0030023606 |     9990000 |              150 | 25-06-2010 |  426.95 |         13.67 |            19000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Send Mail | Approve / Reject | Approve       | Pending-Action | Resolved-Completed | Update Status | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory_ManualOrderRevision @CRNA_TC_006 @CRNA
  Scenario Outline: Review Risk Category Using Manual Order Revision-Creating case using Pega Bot and update the case to different statuses by Rejecting the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value5>" and "<value6>"
    And Click on Approve Reject link
    And Select status as "<ChooseActionValue>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    Then Verify the case is created
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus3>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>" and "<value4>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Manual Order Revision link
    And Select status as "<ManualOrderRevisionValue>" from Manual Order Revision
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | ChooseActionValue | UpdateStatus3  | UsernameCFS | PasswordCFS | ManualOrderRevisionValue | UpdateStatus4      | value1        | value2                | value3                      | value4                      | value5    | value6           | UpdateStatus  | BOTStatus | Type3                |
      |              0002 |                  10 |      16 | USD      | D                    |     0030001382 | 0030001382 | 0030023606 |    15000000 |               80 | 30-06-2030 |     253 |            45 |            25000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Line Item Addition       | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   | Review Risk Category |

  #|              0003 |                  10 |      16 | CAD      | C                    |     0030045988 | 0030045988 | 0030045988 |       10000 |              100 | 18-07-2020 |       0 |            19 |               20000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Line Item Cancellation        | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   |
  #|              0003 |                  10 |      16 | CAD      | M                    |     0030045988 | 0030045988 | 0030045988 |    22500000 |               73 | 02-07-2020 |     135 |            38 |            23000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Quantity Increase             | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   |
  #|              0002 |                  10 |      16 | USD      | R                    |     0030001382 | 0030001382 | 0030023606 |    20000000 |               73 | 02-07-2020 |     135 |            38 |            23000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Quantity Decrease             | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   |
  #|              0007 |                  10 |      30 | CAD      | S                    |     0030100706 | 0030100706 | 0030100706 |     3000000 |               40 | 13-07-2020 |     158 |            49 |             4000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Error to be Resolved Manually | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   |
  #|              0007 |                  10 |      11 | CAD      | T                    |     0030215751 | 0030215751 | 0030215749 |      300000 |               65 | 12-07-2020 |     322 |            53 |              600000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Other                         | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   |
  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory_CancelOrder @CRNA_TC_007 @CRNA
  Scenario Outline: Review Risk Category Using Cancel Order-Creating case using Pega Bot and update the case to different statuses by Rejecting the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value5>" and "<value6>"
    And Click on Approve Reject link
    And Select status as "<ChooseActionValue>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus2>"
    Then Verify the case is created
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>" and "<value4>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Verify the validation message "<Message>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus4>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | OtherActionsValue | ChooseActionValue | Message                                                       | UpdateStatus2  | UsernameCFS | PasswordCFS | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | value1        | value2                | value3                      | value4                      | value5    | value6           | UpdateStatus  | BOTStatus | Type3                |
      |              0007 |                  10 |      11 | CAD      | S                    |     0030215751 | 0030215751 | 0030215749 |       10000 |              100 | 18-07-2030 |       0 |            19 |               20000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Cancel Order      | Reject            | The order will be closed in SAP once the request is submitted | Pending-Action | Dummy.Kurt  | rules@0101  | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory_UpdateRDD @CRNA_TC_008 @CRNA
  Scenario Outline: Review Risk Category Using Change RDD-Creating case using Pega Bot and update the case to different statuses by Rejecting the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value5>" and "<value6>"
    And Click on Approve Reject link
    And Select status as "<ChooseActionValue>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus2>"
    Then Verify the case is created
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>" and "<value4>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus4>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2  | UsernameCFS | PasswordCFS | OtherActionsValue | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | value1        | value2                | value3                      | value4                      | value5    | value6           | UpdateStatus  | BOTStatus | Type3                |
      |              0003 |                  10 |      16 | CAD      | M                    |     0030045988 | 0030045988 | 0030045988 |       10000 |              100 | 18-07-2030 |       0 |            19 |               20000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Update Status | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryTLApprove @CRNA_TC_009 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot and Approve the case by Team Lead
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameTL>"
    And I enter password as "<PasswordTL>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus5>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus6>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | OtherActionsValue | ChooseActionValue | UpdateStatus2    | UsernameTL                 | PasswordTL | UpdateStatus3 | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0007 |                  10 |      11 | CAD      | C                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 26-07-2030 |       0 |            19 |             3000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Cancel Order      | Reject            | Pending-TLReview | parul.rai@Areteanstech.com | May@2020   | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryTLApprove_PgiLessThan3_UpdateRDD @CRNA_TC_010 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot PGI date check <=3days,UpdateRDD and the case will navigate from Team Lead to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameTL>"
    And I enter password as "<PasswordTL>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    And Verify the updated case status as "<UpdateStatus7>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2    | UsernameTL                 | PasswordTL | OtherActionsValue | UpdateStatus3 | UpdateStatus4  | UpdateStatus5          | UpdateStatus6                 | UpdateStatus7      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0007 |                  10 |      11 | CAD      | G                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 03-07-2010 |       0 |            19 |             3000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Reject            | Pending-TLReview | parul.rai@Areteanstech.com | May@2020   | Update RDD        | Approve       | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryTLApprove_PGILessThan3days_UpdateStatus @CRNA_TC_011 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot PGI date check <=3days,UpdateStauts and the case will navigate from Team Lead to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameTL>"
    And I enter password as "<PasswordTL>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus5>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus5>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2    | UsernameTL                 | PasswordTL | OtherActionsValue | UpdateStatus3 | UpdateStatus4  | UpdateStatus5      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0007 |                  10 |      11 | CAD      | E                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 26-06-2009 |       0 |            19 |             3000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Reject            | Pending-TLReview | parul.rai@Areteanstech.com | May@2020   | Update RDD        | Approve       | Pending-Action | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryManagerApprove @CRNA_TC_012 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot and Approve the case by Manager
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameManager>"
    And I enter password as "<PasswordManager>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus5>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus6>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | UpdateStatus2         | UsernameManager                        | PasswordManager | UpdateStatus3 | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0003 |                  10 |      16 | CAD      | K                    |     0030045988 | 0030045988 | 0030045988 |     1000000 |              100 | 18-07-2030 |       0 |            19 |            10000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-ManagerReview | abhinash.kotikalapudi@areteanstech.com | SIVA1234$       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  @ReviewRiskCategory @ReviewRiskCategoryManagerApprove_PGIlessthan3_UpdateRDD @CRNA_TC_013 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot PGI date check <=3days,UpdateRDD and the case will route to from Manager to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameManager>"
    And I enter password as "<PasswordManager>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    #And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    And Verify the updated case status as "<UpdateStatus7>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2         | UsernameManager                        | PasswordManager | OtherActionsValue | UpdateStatus3 | UpdateStatus4  | UpdateStatus5          | UpdateStatus6                 | UpdateStatus7      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0003 |                  10 |      16 | CAD      | W                    |     0030045988 | 0030045988 | 0030045988 |     1000000 |              100 | 30-06-2007 |       0 |            19 |            10000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Reject            | Pending-ManagerReview | abhinash.kotikalapudi@areteanstech.com | SIVA1234$       | Update RDD        | Approve       | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryManagerApprove_PGIlessthan3_UpdateStatus @CRNA_TC_014 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot PGI date check <=3days,UpdateStatus and the case will route to from Director to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameManager>"
    And I enter password as "<PasswordManager>"
    And I click on Login button
    And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    And Click on Home tab
    And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus5>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus5>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2         | UsernameManager                        | PasswordManager | UpdateStatus3 | UpdateStatus4  | UpdateStatus5      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0003 |                  10 |      16 | CAD      | L                    |     0030045988 | 0030045988 | 0030045988 |     1000000 |              100 | 30-06-2001 |       0 |            19 |            10000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Reject            | Pending-ManagerReview | abhinash.kotikalapudi@areteanstech.com | SIVA1234$       | Approve       | Pending-Action | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryDirectorApprove @CRNA_TC_015 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot and Approve the case by Director
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameDirector>"
    And I enter password as "<PasswordDirector>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus5>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus6>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | UpdateStatus2          | UsernameDirector                   | PasswordDirector | UpdateStatus3 | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0007 |                  10 |      11 | CAD      | U                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 18-07-2029 |       0 |            19 |            31000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |
      |              0007 |                  10 |      11 | CAD      | U                    |     0030215751 | 0030215751 | 0030215749 |             |              100 | 18-07-2040 |       0 |            19 |              100000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |
      |              0007 |                  10 |      11 | CAD      | U                    |     0030215751 | 0030215751 | 0030215749 |             |              100 | 18-07-2039 |       0 |            19 |                     | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |
      |              0007 |                  10 |      11 | CAD      | U                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 18-07-2045 |       0 |            19 |                     | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryDirectorApprove_PGIlessthan3_UpdateRDD @CRNA_TC_016 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot PGI date check <=3days,UpdateRDD and the case will navigate from Director to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameDirector>"
    And I enter password as "<PasswordDirector>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    And Verify the updated case status as "<UpdateStatus7>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2          | UsernameDirector                   | PasswordDirector | OtherActionsValue | UpdateStatus3 | UpdateStatus4  | UpdateStatus5          | UpdateStatus6                 | UpdateStatus7      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0007 |                  10 |      11 | CAD      | O                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 23-06-2003 |       0 |            19 |            31000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Reject            | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Update RDD        | Approve       | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @ReviewRiskCategory @ReviewRiskCategoryDirectorApprove_PGIlessthan3_UpdateStatus @CRNA_TC_017 @CRNA
  Scenario Outline: Review Risk Category - Creating case using Pega Bot PGI date check <=3days,UpdateStatus and the case will navigate from Director to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameDirector>"
    And I enter password as "<PasswordDirector>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus5>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus5>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2          | UsernameDirector                   | PasswordDirector | UpdateStatus3 | UpdateStatus4  | UpdateStatus5      | UpdateStatus  | value1    | value2      | BOTStatus | Type3                |
      |              0007 |                  10 |      11 | CAD      | Y                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 23-06-2009 |       0 |            19 |            31000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Reject            | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Approve       | Pending-Action | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | Review Risk Category |

  #********************************Team Lead review (TL)*****************************************************
  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_ManualOrderRevision @CRNA_TC_018 @CRNA
  Scenario Outline: TL Review -  Using Manual Order Revision-Creating case using Pega Bot and update the case to different statuses by Rejecting the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    #And Click on Follow button
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Verify the values in other actions threedotmenu "<value5>" and "<value6>"
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<ChooseActionValue>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    Then Verify the case is created
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
    And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    #And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus3>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>" and "<value4>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Manual Order Revision link
    And Select status as "<ManualOrderRevisionValue>" from Manual Order Revision
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | ChooseActionValue | UpdateStatus3  | UsernameCFS | PasswordCFS | ManualOrderRevisionValue | UpdateStatus4      | UpdateStatus  | value1        | value2                | value3                      | value4                      | value5    | value6           | BOTStatus | Type3     |
      |              0003 |                  10 |      16 | CAD      | F                    |     0030045988 | 0030045988 | 0030045988 |           0 |               58 | 13-07-2030 |       0 |            25 |                   0 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Line Item Cancellation   | Resolved-Completed | Update Status | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Success   | TL Review |

  #  |  8884 |       10000 |              100 | 18-07-2020 |       0 |            19 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Line Item Addition            | Resolved-Completed |
  #  |  8884 |       10000 |              100 | 18-07-2020 |       0 |            19 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Quantity Decrease             | Resolved-Completed |
  #  |  8884 |       10000 |              100 | 18-07-2020 |       0 |            19 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Quantity Increase             | Resolved-Completed |
  #  |  8884 |       10000 |              100 | 18-07-2020 |       0 |            19 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Error to be Resolved Manually | Resolved-Completed |
  #  |  8884 |       10000 |              100 | 18-07-2020 |       0 |            19 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Other                         | Resolved-Completed |
  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_CancelOrder @CRNA_TC_019 @CRNA
  Scenario Outline: TL Review - Using Cancel Order-Creating case using Pega Bot and update the case to different statuses by Rejecting the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Verify the values in other actions threedotmenu "<value5>" and "<value6>"
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<ChooseActionValue>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus2>"
    Then Verify the case is created
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    #Then Close the browser
    #Given Open the browser and navigate to the url
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    #And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button two
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>" and "<value4>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Verify the validation message "<Message>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | Creditlimitusage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | OtherActionsValue | Message                                                       | ChooseActionValue | UpdateStatus2  | UsernameCFS | PasswordCFS | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | UpdateStatus  | value1        | value2                | value3                      | value4                      | value5    | value6           | BOTStatus | Type3     |
      |              0007 |                  10 |      11 | CAD      | A                    |     0030215751 | 0030215751 | 0030215749 |      210000 |              100 | 18-07-2029 |      31 |            38 |              220000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Cancel Order      | The order will be closed in SAP once the request is submitted | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_UpdateRDD @CRNA_TC_020 @CRNA
  Scenario Outline: TL Review - Using Change RDD-Creating case using Pega Bot and update the case to different statuses by Rejecting the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Verify the values in other actions threedotmenu "<value5>" and "<value6>"
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<ChooseActionValue>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus2>"
    Then Verify the case is created
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus4>"
    #And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    # And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>" and "<value4>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus4>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | Creditlimitusage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2  | UsernameCFS | PasswordCFS | OtherActionsValue | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | UpdateStatus  | value1        | value2                | value3                      | value4                      | value5    | value6           | BOTStatus | Type3     |
      |              0003 |                  10 |      16 | CAD      | B                    |     0030045988 | 0030045988 | 0030045988 |      600000 |              100 | 16-07-2031 |       5 |            38 |              700000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Send Mail | Approve / Reject | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_ApproveByRS @CRNA_TC_021 @CRNA
  Scenario Outline: TL Review-Creating case using Pega Bot and update the case to different statuses by Approving the case
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the values in other actions threedotmenu "<value1>" and "<value2>"
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus2>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus4>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | UpdateStatus2 | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | UpdateStatus  | value1    | value2           | BOTStatus | Type3     |
      |              0007 |                  10 |      11 | CAD      | A                    |     0030215751 | 0030215751 | 0030215749 |        1000 |               67 | 18-07-2030 |      31 |            30 |                2000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Approve / Reject | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_ApproveByRS_PGILessthan3daysUpdateRDD @CRNA_TC_022 @CRNA
  Scenario Outline: TL Review-Creating case using Pega Bot PGI date check <=3days,update RDD and the case will navigate from Revenuespecialst to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value1>" and "<value2>"
    And Click on Approve Reject link
    And Select status as "<UpdateStatus2>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    And Verify the updated case status as "<UpdateStatus6>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | UpdateStatus2 | UpdateStatus3  | value1    | value2           | UpdateStatus  | OtherActionsValue | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | BOTStatus | Type3     |
      |              0002 |                  10 |      16 | USD      | B                    |     0030001382 | 0030001382 | 0030023606 |     1000000 |              101 | 29-06-2007 |      23 |            12 |            11000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Approve       | Pending-Action | Send Mail | Approve / Reject | Update Status | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_ApproveByRS_PGILessthan3daysUpdateStatus @CRNA_TC_023 @CRNA
  Scenario Outline: TL Review-Creating case using Pega Bot PGI date check <=3days,UpdateStatus and the case will navigate from Revenuespecialst to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions threedotmenu "<value1>" and "<value2>"
    And Click on Approve Reject link
    And Select status as "<UpdateStatus2>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus3>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus4>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | value1    | value2           | UpdateStatus2 | UpdateStatus3  | UpdateStatus4      | UpdateStatus  | BOTStatus | Type3     |
      |              0007 |                  10 |      16 | CAD      | H                    |     0030038161 | 0030038161 | 0030025715 |     1000000 |              101 | 28-06-2006 |      34 |            15 |             2000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Send Mail | Approve / Reject | Approve       | Pending-Action | Resolved-Completed | Update Status | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_TLReviewTeamLeadApprove @CRNA_TC_024 @CRNA
  Scenario Outline: TL Review - Creating case using Pega Bot and Approve the case by Team Lead
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameTL>"
    And I enter password as "<PasswordTL>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus5>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus6>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | UpdateStatus2    | UsernameTL                 | PasswordTL | UpdateStatus3 | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | UpdateStatus  | value1    | value2      | BOTStatus | Type3     |
      |              0007 |                  10 |      11 | CAD      | A                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              100 | 18-07-2030 |      31 |            19 |             3000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-TLReview | parul.rai@Areteanstech.com | May@2020   | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_TLApprove_PgiLessThan3_UpdateRDD @CRNA_TC_025 @CRNA
  Scenario Outline: TLReview - Creating case using Pega Bot PGI date check <=3days,UpdateRDD and the case will navigate from Team Lead to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameTL>"
    And I enter password as "<PasswordTL>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    #And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus5>"
    And Wait for the bot response
    #And Verify the updated case status as "<UpdateStatus5>"
    #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus5>"
    #And Click on Follow button
    And Verify the updated case status as "<UpdateStatus7>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | UpdateStatus2    | UsernameTL                 | PasswordTL | OtherActionsValue | UpdateStatus3 | UpdateStatus4  | UpdateStatus5          | UpdateStatus6                 | UpdateStatus7      | UpdateStatus  | value1    | value2      | BOTStatus | Type3     |
      |              0001 |                  10 |      16 | USD      | B                    |     0030003346 | 0030003346 | 0030003346 |       10000 |              106 | 24-06-2006 |      22 |            11 |            15000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Pending-TLReview | parul.rai@Areteanstech.com | May@2020   | Update RDD        | Approve       | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_TLApprove_PgiLessThan3_UpdateStatus @CRNA_TC_026 @CRNA
  Scenario Outline: TL Review - Creating case using Pega Bot PGI date check <=3days,UpdateStauts and the case will navigate from Team Lead to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameTL>"
    And I enter password as "<PasswordTL>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus5>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus5>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | UpdateStatus2    | UsernameTL                 | PasswordTL | UpdateStatus3 | UpdateStatus4  | UpdateStatus5      | UpdateStatus  | value1    | value2      | BOTStatus | Type3     |
      |              0007 |                  10 |      11 | CAD      | I                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |              101 | 30-06-2002 |     213 |            22 |             3000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Pending-TLReview | parul.rai@Areteanstech.com | May@2020   | Approve       | Pending-Action | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_TLReviewManagerApprove @CRNA_TC_027 @CRNA
  Scenario Outline: TL Review - Creating case using Pega Bot and Approve the case by Manager
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameManager>"
    And I enter password as "<PasswordManager>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus5>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus6>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | UpdateStatus2         | UsernameManager                        | PasswordManager | UpdateStatus3 | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | UpdateStatus  | value1    | value2      | BOTStatus | Type3     |
      |              0003 |                  10 |      16 | CAD      | B                    |     0030045988 | 0030045988 | 0030045988 |     1000000 |              100 | 18-07-2029 |       5 |            38 |            10000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-ManagerReview | abhinash.kotikalapudi@areteanstech.com | SIVA1234$       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | TL Review |

  @TLReview_ManagerApprove_PGIlessthan3_UpdateRDD @CRNA_TC_028 @CRNA
  Scenario Outline: TL Review - Creating case using Pega Bot PGI date check <=3days,UpdateRDD and the case will route to from Manager to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameManager>"
    And I enter password as "<PasswordManager>"
    And I click on Login button
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on "<OtherActionsValue>" link
    And Select New RDD date
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus5>"
    And Wait for the bot response
    #And Run the pegabot API to change the status from acknowledgement to resolved completed
    And Verify the updated case status as "<UpdateStatus7>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | UpdateStatus2         | UsernameManager                        | PasswordManager | OtherActionsValue | UpdateStatus3 | UpdateStatus4  | UpdateStatus5          | UpdateStatus6                 | UpdateStatus7      | UpdateStatus  | value1    | value2      | BOTStatus | Type3     |
      |              0002 |                  10 |      16 | USD      | F                    |     0030001382 | 0030001382 | 0030023606 |     5000000 |               99 | 02-07-2004 |       2 |            30 |            55000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Pending-ManagerReview | abhinash.kotikalapudi@areteanstech.com | SIVA1234$       | Update RDD        | Approve       | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_ManagerApprove_PGIlessthan3_UpdateStatus @CRNA_TC_029 @CRNA
  Scenario Outline: TL Review - Creating case using Pega Bot PGI date check <=3days,UpdateStatus and the case will route to from Manager to CFS
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameManager>"
    And I enter password as "<PasswordManager>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    #And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on OtherActions button
    And Click on UpdateStatus link
    And Select status as "<UpdateStatus5>"
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus5>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | UpdateStatus1                   | UpdateStatus2         | UsernameManager                        | PasswordManager | UpdateStatus3 | UpdateStatus4  | UpdateStatus5      | UpdateStatus  | value1    | value2      | BOTStatus | Type3     |
      |              0002 |                  10 |      16 | USD      | A                    |     0030001382 | 0030001382 | 0030023606 |     5000000 |               99 | 20-06-2006 |       2 |            30 |            55000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Pending-RevenueSpecialistReview | Pending-ManagerReview | abhinash.kotikalapudi@areteanstech.com | SIVA1234$       | Approve       | Pending-Action | Resolved-Completed | Update Status | Send Mail | Trigger SOA | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @TLReview_TLReviewDirectorApprove @CRNA_TC_030 @CRNA
  Scenario Outline: TL Review - Creating case using Pega Bot and Approve the case by Director
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the credit limit excl future "<ExclFuture>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value1>" and "<value2>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameDirector>"
    And I enter password as "<PasswordDirector>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus5>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus6>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | UpdateStatus2          | UsernameDirector                   | PasswordDirector | UpdateStatus3 | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | UpdateStatus  | value1    | value2      | ExclFuture | BOTStatus | Type3     |
      |              0007 |                  10 |      11 | CAD      | F                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |               58 | 18-07-2020 |       0 |            25 |            31000000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA |      31.00 | Success   | TL Review |

  #********************************Sent Mail*****************************************************
  #Authors U.Ramakrishna, Mohan Sreekanth
  @SentmailRSPendingResponse @CRNA_TC_031 @CRNA
  Scenario Outline: Revenue Specialist sending mail and Purpose Of Email is Pending Resonse
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Enter "<ContactPerson>" mailID
    And Select purpose of email "<PurposeOfEmail>"
    And Verify the values present in the Email Destination "<EmailDestinationValue1>" and "<EmailDestinationValue2>" and "<EmailDestinationValue3>" dropdown field
    And Select email destination "<EmailDestination>" from dropdown
    And Click on sendmail button
    And Verify the Email Destination field in General Data tab is same as expected "<EmailDestination>"
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Email Information tab
    And Verify the mail sent is present in the email information tab
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | Creditlimitusage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | OtherActionsValue | PurposeOfEmail   | EmailDestination | UpdateStatus2    | ContactPerson                       | EmailDestinationValue1  | EmailDestinationValue2 | EmailDestinationValue3 | UpdateStatus  | BOTStatus | Type3                |
      |              0001 |                  10 |      16 | USD      | P                    |     0030001125 | 0030001125 | 0030023426 |      600000 |               80 | 26-06-2020 |       5 |            30 |              700000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Send Mail         | Pending Response | Sales            | Pending-Response | ramakrishna.uppara@areteanstech.com | Revenue Management Team | Customer Contact       | Sales                  | Update Status | Success   | Review Risk Category |

  #|              0001 |                  10 |      16 | USD      | P                    |     0030001125 | 0030001125 | 0030023426 |      600000 |               80 | 26-06-2020 |       5 |            30 |              700000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Send Mail      | Pending Response | Revenue Management Team | Pending-Response |mohan.akula@areteanstech.com|
  #|              0001 |                  10 |      16 | USD      | P                    |     0030001125 | 0030001125 | 0030023426 |      600000 |               80 | 26-06-2020 |       5 |            30 |              700000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Send Mail      | Pending Response | Customer Contact        | Pending-Response |mohan.akula@areteanstech.com|
  #Authors U.Ramakrishna, Mohan Sreekanth
  #@bot13 @Sentmail
  #Scenario Outline: Customer Facing Specialist sending mail and Purpose Of Email is Pending Resonse
  #Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<Creditlimitusage_TR>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
  #When User Clicks on the case id
  #And Click on Edit button
  #And Verify the updated case status as "<UpdateStatus1>"
  #And Click on OtherActions button
  #And Verify the "<UpdateStatus>" value
  #And Click on Approve Reject link
  #And Select status as "<ChooseActionValue>" from choose Action
  #And Click on Submit button in update status pop up
  #And Verify the updated case status as "<UpdateStatus2>"
  #Then Verify the Generic case is created
  #And Wait for the bot response
  #And Verify the updated case status as "<UpdateStatus4>"
  #And Wait for the bot response
  #And Verify the updated case status as "<UpdateStatus5>"
  #And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus3>"
  #And Click on Follow button
  #When I click on Logout button
  #And I click on Logout
  #Then Logout should be successful
  #When I enter username as "<UsernameCFS>"
  #And I enter password as "<PasswordCFS>"
  #And I click on Login button
  # And Click on Home tab
  #And Click on my work icon in Advance search screen NA
  #And Click on Filter Icon on CaseID column in mycases NA
  #And Enter Case id into the case text textbox in mycases NA
  #And Click on Apply button
  #And Verify the case id in mycases NA
  #And Click on Edit button
  #And Verify the updated case status as "<UpdateStatus2>"
  #And Click on OtherActions button
  #And Verify the "<UpdateStatus>" value
  #And Click on "<OtherActionsValue>" link
  #And Enter "<ContactPerson>" mailID
  #And Select purpose of email "<PurposeOfEmail>"
  #And Select email destination "<EmailDestination>" from dropdown
  #And Click on sendmail button
  #And Verify the Email Destination field in General Data tab is same as expected "<EmailDestination>"
  #And Verify the updated case status as "<UpdateStatus3>"
  #And Click on Follow button
  #When I click on Logout button
  #And I click on Logout
  #Then Logout should be successful
  #
  #Examples:
  #| SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | Creditlimitusage_TR | UsernameRS | PasswordRS | UpdateStatus1                   | ChooseActionValue | UpdateStatus2  | UsernameCFS | PasswordCFS | OtherActionsValue | PurposeOfEmail   | EmailDestination | UpdateStatus3    | ContactPerson                | UpdateStatus  |
  #|              0003 |                  10 |      16 | CAD      | B                    |     0030045988 | 0030045988 | 0030045988 |      600000 |              100 | 16-07-2020 |       5 |            38 |              700000 | Dummy.Remo | India123$  | Pending-RevenueSpecialistReview | Reject            | Pending-Action | Dummy.Kurt  | rules@0101  | Send Mail         | Pending Response | Customer Contact | Pending-Response | mohan.akula@areteanstech.com | Update Status |
  @SentmailCFSPendingResponse @CRNA_TC_032 @CRNA
  Scenario Outline: Customer Facing Specialist sending mail and Purpose Of Email is Pending Resonse
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>"
    When User Clicks on the case id
    #And Wait for the bot response Auto
    #Then Verify the edit button is disabled
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on SendMail link
    And Enter "<ContactPerson>" mailID
    And Verify the options information only and pending response are displayed "<value>"
    And Select purpose of email "<PurposeOfEmail>"
    And Select email destination "<EmailDestination>" from dropdown
    And Click on sendmail button
    And Verify the Email Destination field in General Data tab is same as expected "<EmailDestination>"
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on Email Information tab
    And Verify the mail sent is present in the email information tab
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | Username   | Password   | UpdateStatus1  | UpdateStatus2    | PurposeOfEmail   | EmailDestination | ContactPerson                | value | UpdateStatus  | BOTStatus | Type3               |
      |              0003 |                  10 |      16 | CAD      | Z                    |     0030045988 | 0030045988 | 0030045988 |    25000000 |              100 | 05-08-2020 |       1 |            40 |            26000000 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-Response | Pending Response | Customer Contact | mohan.akula@areteanstech.com | true  | Update Status | Success   | Manual Intervention |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @SentmailInformationOnlyByRS @CRNA_TC_033 @CRNA
  Scenario Outline: Revenue Specialist and Customer Facing Specialist sending mail and Purpose Of Email is Information Only
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Enter "<ContactPerson>" mailID
    And Verify the options information only and pending response are displayed "<value>"
    And Select purpose of email "<PurposeOfEmail>"
    And Click on sendmail button
    And Click on Email Information tab
    And Verify the mail sent is present in the email information tab
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | Creditlimitusage_TR | Username   | Password  | UpdateStatus1                   | OtherActionsValue | PurposeOfEmail   | ContactPerson                | UpdateStatus  | value | BOTStatus | Type3                |
      # |              0001 |                  10 |      16 | USD      | X                    |     0030001125 | 0030001125 | 0030023426 |      600000 |               80 | 26-06-2020 |       5 |            30 |              700000 | Dummy.Kurt | rules@0101 | Pending-Action                  | Send Mail      | Information Only |mohan.akula@areteanstech.com|
      |              0003 |                  10 |      16 | CAD      | M                    |     0030045988 | 0030045988 | 0030045988 |      600000 |               80 | 26-06-2007 |       5 |            30 |              700000 | Dummy.Remo | India123$ | Pending-RevenueSpecialistReview | Send Mail         | Information Only | mohan.akula@areteanstech.com | Update Status | true  | Success   | Review Risk Category |

  @SentmailInformationOnlyByCFS @CRNA_TC_034 @CRNA
  Scenario Outline: Revenue Specialist and Customer Facing Specialist sending mail and Purpose Of Email is Information Only
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on "<OtherActionsValue>" link
    And Enter "<ContactPerson>" mailID
    And Verify the options information only and pending response are displayed "<value>"
    And Select purpose of email "<PurposeOfEmail>"
    And Click on sendmail button
    And Click on Email Information tab
    And Verify the mail sent is present in the email information tab
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | Creditlimitusage_TR | Username   | Password   | UpdateStatus1  | OtherActionsValue | PurposeOfEmail   | ContactPerson                | UpdateStatus  | value | BOTStatus | Type3               |
      |              0001 |                  10 |      16 | USD      | X                    |     0030001125 | 0030001125 | 0030023426 |      600000 |               80 | 26-06-2020 |       5 |            30 |              700000 | Dummy.Kurt | rules@0101 | Pending-Action | Send Mail         | Information Only | mohan.akula@areteanstech.com | Update Status | true  | Success   | Manual Intervention |

  #|              0003 |                  10 |      16 | CAD      | M                    |     0030045988 | 0030045988 | 0030045988 |      600000 |               80 | 26-06-2020 |       5 |            30 |              700000 | Dummy.Remo | India123$ | Pending-RevenueSpecialistReview | Send Mail         | Information Only | mohan.akula@areteanstech.com | Update Status | true  | Success   | Review Risk Category |
  #Author U.Ramakrishna, Mohan Sreekanth
  @EmailInbound_PendingResponse @CRNA_TC_035 @CRNA
  Scenario Outline: Verify that when user responds to the mail when purpose of mail, Pending-Response then the response mail should be attached in the case, Email Destination field in the case should become blank and case status should changed to "Pending-Action".
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    And Select "<Value>" from search results dropdown
    And Enter "<CaseId>" into search field
    When click on Search icon
    When Click on three dots button in search with case id
    And Click on start research button
    And Click on Email Information tab
    And Verify the mail sent is present in the email information tab
    And Verify the reply email attachment is present for "<CaseId>"
    And Verify the updated case status as "<UpdateStatus>"
    And Verify the email destination field as blank
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username   | Password   | Value | CaseId   | UpdateStatus   |
      | Dummy.Kurt | rules@0101 | Cases | CR-11261 | Pending-Action |

  #********************************Advance Search*****************************************************
  #Authors U.Ramakrishna, Mohan Sreekanth
  @AdvanceSearch @CRNA_TC_036 @CRNA
  Scenario Outline: Advance Search end-to-end functionality
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    #Then Login should be successful
    And Click on Home tab
    Then select Advance case search from left side panel
    And Enter "<SalesOrganization>" number in the sales organization field
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    And Select values from "<type1>" and "<type2>" and "<type3>" dropdown in advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then select "<CaseType>" as generic case and select "<CurrentCaseStatus>" as Pendinginprgress in advance search screen
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then Enter "<SalesOrderNumber>" in Advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then select current case responsbile "<CurrentCaseResponsible>" in advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    Then enter case number "<casenumber>" in advance search
    And click on search button in the advance search screen
    And click on Export to excel button in advance search screen
    And click on clear button in advance search screen
    #	And Click on my work icon in Advance search screen NA
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    #And change case created from date in advance search
    Examples: 
      | Username   | Password  | Sales Organization | type1             | type2          | type3                | Case Type                                | Current Case Status | Sales Order Number | CurrentCaseResponsible | case number |
      | Dummy.Remo | India123$ |               0001 | Credit Management | Credit Release | Review Risk Category | General Case Management - Credit Release | Pending-Action      |         0100882159 | ECC WB                 | CR-10274    |

  #| Dummy.Kurt | rules@0101 |               0003 | Credit Management | Credit Release | Manual Intervention  | General Case Management - Credit Release | Pending-Response             |         0100882171 | sudheer.meetakoti@Areteanstech.com           | CR-10275    |
  #| Dummy.Remo | India123$  |               0002 | Credit Management | Credit Release | TL Review            | General Case Management - Credit Release | Pending-TLReview             |         0100882193 | Dummy.Kurt                          CR-10276 |             |
  #| Dummy.Kurt | rules@0101 |               0007 | Credit Management | Credit Release | BOT Error            | General Case Management - Credit Release | Pending-BOTIntegrationFailed |         8886092483 | Revenue Specialist WB               CR-10575 |             |
  #Authors U.Ramakrishna, Mohan Sreekanth
  @VerifyCaseResponsible_SLA @CRNA_TC_037 @CRNA
  Scenario Outline: Validate that when CR case is created it should be first assigned to CR BOT workbasket and SLA has be 8 hours.
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>" to verify bot WB SLA and Edit button
    When User Clicks on the case id to verify BOT Request and Response
    #And Click on Follow button
    #And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the Case Responsible as "<Case Responsible>" and SLA as "<SLA>"
    Then Verify the case is created
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | Username   | Password   | UpdateStatus1      | Case Responsible | SLA              | BOTStatus |
      |              0003 |                  10 |      16 | CAD      | Z                    |     0030045988 | 0030045988 | 0030045988 |    25000000 |              100 | 05-08-2020 |       1 |            40 |            26000000 | Dummy.Kurt | rules@0101 | Pending-BOTRequest | CR BOT WB        | 8 hrs and 0 mins | Success   |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @VerifyEditButton @CRNA_TC_038 @CRNA
  Scenario Outline: Verify Edit button is disabled
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>" to verify bot WB SLA and Edit button
    When User Clicks on the case id to verify BOT Request and Response
    And Wait for the bot response Auto
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the edit button is disabled
    And Perform the get request of BOT
    And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus2>"
    Then Verify the edit button is disabled
    Then Verify the case is created
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | Username   | Password   | UpdateStatus1      | UpdateStatus2       | BOTStatus |
      |              0003 |                  10 |      16 | CAD      | Z                    |     0030045988 | 0030045988 | 0030045988 |    25000000 |              100 | 05-08-2020 |       1 |            40 |            26000000 | Dummy.Kurt | rules@0101 | Pending-BOTRequest | Pending-BOTResponse | Success   |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @Genericcase/CreditReleaseExistForSalesOrder @CRNA_TC_039 @CRNA
  Scenario Outline: Verify that when Pega recieves a Credit block on sales order then Pega need to check that if any Generic case/Credit Release existsor not and then should proceed with case creation.
    Given Verify the case is creating or not for the existing or new sales order number "<SalesOrderNumber>" by logging into the application with username "<Username>" and password "<Password>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | Username   | Password   | SalesOrderNumber |
      | Dummy.Kurt | rules@0101 |       9259910392 |
      | Dummy.Kurt | rules@0101 |       8790000942 |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @AssignToCFS @CRNA_TC_040 @CRNA
  Scenario Outline: Verify that when user selects Assign To CFS then case should be assigned to the CFS selected in Parties & Org tab.
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on Assign To CFS button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Case Change Log tab
    And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | OtherActionsValue | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1        | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 | value1        | value2                | value3                      | BOTStatus | Type3                |
      |              0003 |                  10 |      16 | CAD      | M                    |     0030045988 | 0030045988 | 0030045988 |       10000 |              100 | 18-07-2020 |       0 |            19 |               20000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Work status          | Case Responsible          | Pending-BOTResponse      | Pending-RevenueSpecialistReview | Revenue Specialist WB             | Dummy.Kurt                        | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @AssignToWorbasket @CRNA_TC_041 @CRNA
  Scenario Outline: Verify that when user selects Assign To Workbasket then case should be assigned to RS workbasket as for Credit Release case RS WB is mapped for each & every typology
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on Assign To Workbasket link
    And Click on close tab
    #And Click on Home tab
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
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | OtherActionsValue | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1        | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 | WorkBasket                            | value1        | value2                | value3                      | BOTStatus | Type3     |
      |              0003 |                  10 |      16 | CAD      | B                    |     0030045988 | 0030045988 | 0030045988 |     1000000 |              100 | 18-07-2028 |       5 |            38 |            10000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Work status          | Case Responsible          | Pending-BOTResponse      | Pending-RevenueSpecialistReview | Dummy.Kurt                        | Revenue Specialist WB             | UnileverO2C:Revenue Specialist Basket | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   | TL Review |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @AssignToPreviousAssignee @CRNA_TC_042 @CRNA
  Scenario Outline: Verfiy that Assign To Previous assignee should assign the case to the previous operator who has performed the action on the case.
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on Assign To CFS button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameCFS>"
    And I enter password as "<PasswordCFS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    And Click on Edit button
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>" and "<value4>"
    And Click on Assign To Previous Assignee
    And Select the previous Assignee and click on submit
    When I click on Logout button
    And I click on Logout
    #Then Logout should be successful
    When I enter username as "<UsernameRS>"
    And I enter password as "<PasswordRS>"
    And I click on Login button
    #Then Login should be successful
    And Click on close tab
    #And Click on case id in My Cases tab
    #And Click on Home tab
    #And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | OtherActionsValue | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1        | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 | PrevoiusAssignee | value1        | value2                | value3                      | value4                      | BOTStatus | Type3                |
      |              0003 |                  10 |      16 | CAD      | M                    |     0030045988 | 0030045988 | 0030045988 |       10000 |              100 | 18-07-2020 |       0 |            19 |               20000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Work status          | Case Responsible          | Pending-BOTResponse      | Pending-RevenueSpecialistReview | Revenue Specialist WB             | Dummy.Kurt                        | Dummy.Remo       | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Assign To Previous Assignee | Success   | Review Risk Category |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @AssignToNewAssigneeOperator @CRNA_TC_043 @CRNA
  Scenario Outline: Verity that Assign to New Assignee(Operator) should assign the case to the opeartor, according to the  value selected from the dropdown
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameCFS>" and "<PasswordCFS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on Assign To New Assignee
    And Select the New Assignee "<NewAssignee>" and Assign to type "<AssignToType>" click on submit NA
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameRS>"
    And I enter password as "<PasswordRS>"
    And I click on Login button
    And Click on close tab
    #And Click on Home tab
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in mycases NA
    And Enter Case id into the case text textbox in mycases NA
    And Click on Apply button
    And Verify the case id in mycases NA
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | OtherActionsValue | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1        | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 | PrevoiusAssignee | NewAssignee | AssignToType | value1        | value2                | value3                      | BOTStatus | Type3               |
      |              0001 |                  10 |      16 | USD      | X                    |     0030001125 | 0030001125 | 0030023426 |     9000000 |              100 | 10-07-2020 |       5 |            35 |            10000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Work status          | Case Responsible          | Pending-BOTResponse      | Pending-RevenueSpecialistReview | Revenue Specialist WB             | Dummy.Kurt                        | Dummy.Remo       | dummy.remo  | Operator     | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   | Manual Intervention |

  #|              0001 |                  10 |      16 | USD      | X                    |     0030001125 | 0030001125 | 0030023426 |     9000000 |              100 | 10-07-2020 |       5 |            35 |            10000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Work status          | Case Responsible          | Pending-BOTResponse      | Pending-RevenueSpecialistReview | Revenue Specialist WB             | Dummy.Kurt                        | Dummy.Remo       | UnileverO2C:Revenue Specialist Basket | Work queue   |
  #Authors U.Ramakrishna, Mohan Sreekanth
  @AssignToNewAssigneeWB @CRNA_TC_044 @CRNA
  Scenario Outline: Verify that Assign to New Assignee(WB) should assign the case to the WB, according to the   value selected from the dropdown
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameCFS>" and "<PasswordCFS>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on Assign To New Assignee
    And Select the New Assignee "<NewAssignee>" and Assign to type "<AssignToType>" click on submit NA
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameRS>"
    And I enter password as "<PasswordRS>"
    And I click on Login button
    #And Click on close tab
    And Click on Home tab
    And Click on My Workbasket tab in Home page
    And Select workbasket "<WorkBasket>" from view Queue for dropdown
    # And Click on my work icon in Advance search screen NA
    And Click on Filter Icon on CaseID column in workbasket cases NA
    And Enter Case id into the case text textbox in workbasket cases NA
    And Click on Apply button
    And Verify the case id in workbasket cases NA
    #And Click on Case Change Log tab
    #And Verify the case status old value "<expectedstatus_oldvalue1>" and new value "<expectedstatus_newvalue1>" and case responsible old value "<expectedcaseresponsible_oldvalue1>" and new value "<expectedcaseresponsible_newvalue1>" under Case Change Log tab based on work status "<Actiontypeworkstatus>" and case responsible old value "<Actiontypecaseresponsible>"
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UsernameCFS | PasswordCFS | OtherActionsValue | UpdateStatus3          | UpdateStatus4                 | UpdateStatus5      | Actiontypeworkstatus | Actiontypecaseresponsible | expectedstatus_oldvalue1 | expectedstatus_newvalue1        | expectedcaseresponsible_oldvalue1 | expectedcaseresponsible_newvalue1 | PrevoiusAssignee | NewAssignee                           | AssignToType | WorkBasket                            | value1        | value2                | value3                      | BOTStatus | Type3               |
      |              0001 |                  10 |      16 | USD      | X                    |     0030001125 | 0030001125 | 0030023426 |     9000000 |              100 | 10-07-2020 |       5 |            35 |            10000000 | Dummy.Remo | India123$  | Dummy.Kurt  | rules@0101  | Update RDD        | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Work status          | Case Responsible          | Pending-BOTResponse      | Pending-RevenueSpecialistReview | Revenue Specialist WB             | Dummy.Kurt                        | Dummy.Remo       | UnileverO2C:Revenue Specialist Basket | Work queue   | UnileverO2C:Revenue Specialist Basket | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   | Manual Intervention |

  #Authors U.Ramakrishna, Mohan Sreekanth
  @VerifyEnabledOptions @CRNA_TC_045 @CRNA
  Scenario Outline: Verify External Notes,Case Status,CFS & CP only following fields are editable once data is pulled from ECC
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<Username>" and "<Password>"
    When User Clicks on the case id
    And Click on Edit button
    Then Verify the case is created
    And Verify the updated case status as "<UpdateStatus1>"
    And Verify the options external notes is disabled
    And Verify the cfs and contact person in parties & organization tab are disabled
    And Verify the update status is disabled
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | Username   | Password   | UpdateStatus1  | UpdateStatus2          | UpdateStatus3                 | UpdateStatus4      | Message                                                       | value1        | value2                | value3                      | BOTStatus |
      |              0001 |                  10 |      16 | USD      | X                    |     0030001125 | 0030001125 | 0030023426 |     9000000 |              100 | 10-07-2020 |       5 |            35 |            10000000 | Dummy.Kurt | rules@0101 | Pending-Action | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | The order will be closed in SAP once the request is submitted | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | Success   |

  @BOTStatus100 @CRNA_TC_046 @CRNA
  Scenario Outline: Verify that pega should Resolve the case for error code 100
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameCFS>" and "<PasswordCFS>"
    When User Clicks on the case id
    And Click on refresh button
    And Verify the updated case status as "<UpdateStatus1>"
    Then Verify the case is created
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameCFS | PasswordCFS | UpdateStatus1      | BOTStatus |
      |              0003 |                  10 |      16 | CAD      | Z                    |     0030045988 | 0030045988 | 0030045988 |    25000000 |              100 | 05-08-2020 |       1 |            40 |            26000000 | Dummy.Kurt  | rules@0101  | Resolved-Completed |       100 |

  @BOTStatus200 @CRNA_TC_047 @CRNA
  Scenario Outline: Verify that when error code is 200 case should be routed to RS workbasket.
    Given Using Pega Bot Create a Case id and assign to CFS "<SalesOrganization>" and "<CustomerRiskCategory>" and "<CustomerNumber>" and "<ShipTo>" and "<Payer>" and "<Divison>" and "<DistributionChannel>" and "<Currency>" and "<CreditLimit>" and "<CreditLimitUsage>" and "<NextDate>" and "<PastDue>" and "<WeightAvgDays>" and "<CreditLimitUsage_TR>" and "<BOTStatus>" and verify in the app using "<UsernameRS>" and "<PasswordRS>"
    When User Clicks on the case id
    And Verify the BOT validation message "<Message>"
    And Click on Edit button
    Then Verify the case is created
    And Verify the casetype "<Type3>" value
    And Verify the updated case status as "<UpdateStatus1>"
    And Click on Assign To button
    And Verify the values in AssignTo button "<value1>" and "<value2>" and "<value3>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Verify the values in other actions three dot menu "<value4>" and "<value5>"
    And Click on Trigger SOA link
    #And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful
    When I enter username as "<UsernameDirector>"
    And I enter password as "<PasswordDirector>"
    And I click on Login button
    #And Click on Home tab
    And Click on close tab
    And Click on Filter Icon on CaseID column in mycases NA SOA
    And Enter Case id into the case text textbox in mycases NA SOA
    And Click on Apply button
    And Verify the case id in mycases NA SOA
    And Click on Edit button
    And Verify the updated case status as "<UpdateStatus2>"
    And Click on OtherActions button
    And Verify the "<UpdateStatus>" value
    And Click on Approve Reject link
    And Select status as "<UpdateStatus3>" from choose Action
    And Click on Submit button in update status pop up
    And Verify the updated case status as "<UpdateStatus4>"
    And Wait for the bot response
    # And Verify the updated case status as "<UpdateStatus5>"
    # And Wait for the bot response
    And Verify the updated case status as "<UpdateStatus6>"
    # And Verify the remarks updated under Case Status Remarks tab "<UpdateStatus4>"
    # And Click on Follow button
    When I click on Logout button
    And I click on Logout
    Then Logout should be successful

    Examples: 
      | SalesOrganization | DistributionChannel | Divison | Currency | CustomerRiskCategory | CustomerNumber | ShipTo     | Payer      | CreditLimit | CreditLimitUsage | NextDate   | PastDue | WeightAvgDays | CreditLimitUsage_TR | UsernameRS | PasswordRS | UpdateStatus1                | UpdateStatus2          | UsernameDirector                   | PasswordDirector | UpdateStatus3 | UpdateStatus4          | UpdateStatus5                 | UpdateStatus6      | UpdateStatus  | value4    | value5      | ExclFuture | BOTStatus | Message                                                               | value1        | value2                | value3                      | Type3     |
      |              0007 |                  10 |      11 | CAD      | F                    |     0030215751 | 0030215751 | 0030215749 |     1000000 |               58 | 18-07-2020 |       0 |            25 |            31000000 | Dummy.Remo | India123$  | Pending-BOTIntegrationFailed | Pending-DirectorReview | sudheer.meetakoti@Areteanstech.com | rules@1234       | Approve       | Pending-ECCIntegration | Pending - ECC Acknowledgement | Resolved-Completed | Update Status | Send Mail | Trigger SOA |      31.00 |       200 | BOT failed to retrieve the Credit Data. Please take necessary action. | Assign To CFS | Assign To Work Basket | Assign To New Assignee & WB | BOT Error |
