package com.cucumber.framework.stepDef;

import org.apache.log4j.Logger;

import com.cucumber.framework.PageObjects.GenericCasePage;
import com.cucumber.framework.PageObjects.Pulse;
import com.cucumber.framework.TestBase.TestBase;
import com.cucumber.framework.helper.Logger.LoggerHelper;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GenericCaseTest {

	private final Logger log = LoggerHelper.getLogger(GenericCaseTest.class);

	GenericCasePage genericcasepage;

	@Given("Select {string} from search results dropdown")
	public void select_from_search_results_dropdown(String value) throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.closeCaseIdTab();
		genericcasepage.selectCustomersFromdropdown(value);
	}

	@Given("Enter {string} into search field")
	public void enter_into_search_field(String customernumber) throws Exception {
		genericcasepage.enterCustomerNumberIntoSearchField(customernumber);
	}

	@When("click on Search icon")
	public void click_on_Search_icon() throws Exception {
		genericcasepage.clickSearchIconbtn();
	}

	@Then("search results corresponding to {string} should be displayed")
	public void search_results_corresponding_to_should_be_displayed(String expectedvalue) throws Exception {
		genericcasepage.verifyResult(expectedvalue);
	}

	@When("Click on three dots button")
	public void click_on_three_dots_button() throws Exception {
		genericcasepage.clickOnThreeDots();
	}

	@When("Click on start research button")
	public void click_on_start_research_button() throws Exception {
		genericcasepage.clickOnStartResearchbtn();
	}

	@When("Hover On Add Task button Pops")
	public void hover_On_Add_Task_button_Pops() throws Exception {
		genericcasepage.hoverOnAddtaskBtn();

	}

	@When("Hover On Add Task button Pops in Advance Search")
	public void hover_on_add_task_button_pops_in_advance_Search() throws Exception {
		genericcasepage.hoverOnAddtaskBtnInAdvanceSearch();

	}

	@Given("Click on Add Task button in OtoC")
	public void click_on_Add_Task_button_in_OtoC() throws Exception {
		genericcasepage.clickOnAddTaskbtn();
	}

	@When("Select the required {string}")
	public void select_the_required(String servicecase) throws Exception {
		genericcasepage.clickOnServiceCase(servicecase);
	}

	@When("Click on the Add Tasks button")
	public void click_on_the_Add_Tasks_button() throws Exception {
		genericcasepage.clickOnAddTasksbtn();
	}

	@Given("Select values from {string} and {string} and {string} dropdown")
	public void select_values_from_and_dropdown(String typeonevalue, String typetwovalue, String typethreevalue) {
		genericcasepage.selectTypeOneAndTypetwoValues(typeonevalue, typetwovalue, typethreevalue);
	}

	@Given("Click on Parties and Organization tab")
	public void click_on_Parties_and_Organization_tab() throws Exception {
		genericcasepage.clickOnPartiesAndOrganizationTab();
	}

	@Given("Select values from {string} and {string} and {string}")
	public void select_values_from_and(String salesorg, String distchannel, String division) {
		genericcasepage.selectSalesOrgAndDistChannelAndDivision(salesorg, distchannel, division);
	}

	@Given("Click on Save button kato")
	public void click_on_Save_button_kato() throws Exception {
		genericcasepage.clickOnSaveButtonKato();
	}

	@Given("Click on Save button NA")
	public void click_on_Save_button_NA() throws Exception {
		genericcasepage.clickOnSaveButtonNA();
	}

	@Then("Verify the case is created")
	public void Verify_the_case_is_created() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.verifyCaseCreated();
	}

	@Then("Verify the SLA {string}")
	public void verify_the_sla(String expectedsla) throws Exception {
		genericcasepage.verifySLA(expectedsla);
	}

	@Then("Verify the Expected Resolution Time")
	public void verify_the_expected_resolution_time() throws Exception {
		genericcasepage.verifyExpectedResolutionTime();
	}

	@Then("Click on Edit button")
	public void click_on_Edit_button() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnEditButton();
	}
	
	@Given("Verify the credit limit excl future {string}")
	public void verify_the_credit_limit_excl_future(String creditlimitusagepercentage) throws Exception {
	    genericcasepage.verifyCreditLimitUsageExclFutureOrdersInPercentage(creditlimitusagepercentage);
	}
	
	@Then("Click on Edit button two")
	public void click_on_Edit_button_two() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnEditButtontwo();
	}
	
	@Then("Select New RDD date")
	public void Select_New_RDD_date() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.sendNewRDDDate();
	}

	@Then("Click on Edit button after launching case from Mycases or MyWorkBasket tab")
	public void click_on_edit_button_after_launching_case_from_mycases_or_myworkbasket_tab() throws Exception {

		genericcasepage.clickOnEditButtonFromMyCasesOrMyWB();
	}

	@Then("Click on OtherActions button")
	public void click_on_OtherActions_button() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnOtherActionsButton();
	}
	
	
	

	@Given("Wait for the bot response")
	public void Wait_for_the_bot_response() throws Exception {

		genericcasepage.waitForBot();
	}
	
	@Given("Wait for the bot response Auto")
	public void Wait_for_the_bot_response_Auto() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.waitForBotAuto();
	}
	
	@Given("Click on {string} link")
	public void click_on_link(String otheractionvalue) throws Exception {
		genericcasepage.clickOnOtherActionsValue(otheractionvalue);
	}
	
	
	@Given("Verify the {string} value")
	public void verify_the_value(String updatestatusvalue) throws Exception {
		genericcasepage.verifyUpdateStatusValue(updatestatusvalue);
	}
	
	@Given("Verify the values in other actions three dot menu {string} and {string}")
	public void verify_the_values_in_other_actions_three_dot_menu_and(String sendmailvalue, String triggersoavalue) throws Exception {
	    genericcasepage.verifySendMailAndTriggerS0A(sendmailvalue,triggersoavalue);
	}

	@Then("Click on Cancel Order link")
	public void click_on_Cancel_Order_link() throws Exception {
		genericcasepage.clickOnCancelOrderLink();
	}
	
	@Given("Verify the validation message {string}")
	public void verify_the_validation_message(String cancelordervalidationmessage) {
	   genericcasepage.validateCancelOrderValidationMessage(cancelordervalidationmessage);
	}
	
	@Then("Click on Change RDD link")
	public void click_on_Change_RDD_link() throws Exception {
		genericcasepage.clickOnCancelOrderLink();
	}

	@Then("Click on Approve Reject link")
	public void click_on_Approve_Reject_link() throws Exception {
		genericcasepage.clickOnApproveRejectLink();
	}
	
	@Given("Click on Trigger SOA link")
	public void click_on_Trigger_SOA_link() throws Exception {
		genericcasepage.clickTriggerSOA();
	}
	
	@Then("Click on Manual Order Revision link")
	public void click_on_Manual_Order_Revision_link() throws Exception {
		genericcasepage.clickOnManualOrderRevisionLink();
	}

	@Given("Select status as {string} from choose Action")
	public void select_status_as_from_choose_Action(String chooseaction) throws Exception {
		genericcasepage.selectChooseActionStatusValueFromDropdown(chooseaction);
	}
	
	@Given("Enter {string} mailID")
	public void enter_mailID(String contactpersonmailid) throws Exception {
	   genericcasepage.enterContactPersonMailID(contactpersonmailid);
	}
	
@Given("Verify the options information only and pending response are displayed {string}")
public void verify_the_options_information_only_and_pending_response_are_displayed(String value) throws Exception {
	genericcasepage.verifyTheOptionPendingResponseAndInformationOnly(value);
}
	
	@Given("Select status as {string} from Manual Order Revision")
	public void select_status_as_from_Manual_Order_Revision(String manualorderrevision) throws Exception {
		genericcasepage.selectManualOrderRevisionStatusValueFromDropdown(manualorderrevision);
	}

	@Then("Click on UpdateStatus link")
	public void click_on_UpdateStatus_link() throws Exception {
		genericcasepage.clickOnUpdateStatusLink();
	}

	@Then("Click on Copy Case link")
	public void click_on_copy_case_link() throws Exception {
		genericcasepage.clickOnCopyCaseLink();

	}

	@Then("Click on New tab opened")
	public void click_on_new_tab_opened() throws Exception {
		genericcasepage.clickOnNewTab();
	}

	@Then("Select status as {string}")
	public void select_status_as(String statusvalue) throws Exception {
		genericcasepage.selectUpdateStatusValueFromDropdown(statusvalue);

	}

	@Then("Click on Submit button in update status pop up")
	public void click_on_Submit_button_in_update_status_pop_up() throws Exception {
		genericcasepage.clickOnSubmitButtonInUpdateStatus();
	}

	@Then("Click on Follow button")
	public void click_on_Follow_button() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnFollowButton();
	}

	@Then("Click on Case Status Remarks tab")
	public void click_on_case_status_remarks_tab() throws Exception {
		genericcasepage.clickOnCaseStatusRemarksTab();
	}

	@Then("Click on Home tab")
	public void click_on_home_tab() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnHomeTab();
	}
	
	@Given("Click on My Reports Tab")
	public void click_on_My_Reports_Tab() throws Exception {
		genericcasepage.clickOnReport();
		
	   
	}
	
	@Given("Click on BRE log link")
	public void click_on_BRE_log_link() throws Exception {
		genericcasepage.clickOnBRELogLink();
	}
	
	@Given("Verify BRE log status")
	public void veriy_BRE_log_status() throws Exception {
		genericcasepage.verifyBRELogStatus();
	}
	

	@Then("Click on Followed Cases tab")
	public void Click_on_followed_cases_tab() throws Exception {
		genericcasepage.clickOnFollowCasesTab();
	}

	@Then("Click on Filter Icon on CaseID column")
	public void click_on_filter_icon_on_caseid_column() throws Exception {
		genericcasepage.clickOnFilterIconOnCaseIDColumn();
	}

	@Then("Enter Case id into the case text textbox")
	public void enter_case_id_into_the_case_text_textbox() throws Exception {
		genericcasepage.enterCaseIDIntoTextBox();
	}

	@Then("Click on Apply button")
	public void click_on_apply_button() throws Exception {
		genericcasepage.clickOnApplyButton();
	}

	@Then("Verify the case id")
	public void verify_the_case_id() throws Exception {
		genericcasepage.verifyCaseId();
	}

	@Given("Click on Filter Icon on CaseID column in followed cases")
	public void click_on_Filter_Icon_on_CaseID_column_in_followed_cases() throws Exception {
		genericcasepage.clickOnFilterIconOnCaseIDColumInFollowedcases();
	}

	@Given("Enter Case id into the case text textbox in followedcases")
	public void enter_Case_id_into_the_case_text_textbox_in_followedcases() throws Exception {
		genericcasepage.enterCaseIDIntoTextBoxInFollowedCases();
	}

	@Given("Verify the case id in followed cases")
	public void verify_the_case_id_in_followed_cases() throws Exception {
		genericcasepage.verifyCaseIdInFollowedCases();
	}

	@Given("Click on Filter Icon on CaseID column in mycases")
	public void click_on_Filter_Icon_on_CaseID_column_in_my_cases() throws Exception {
		genericcasepage.clickOnFilterIconOnCaseIDColumInMyCases();
	}

	@Given("Enter Case id into the case text textbox in mycases")
	public void enter_Case_id_into_the_case_text_textbox_in_mycases() throws Exception {
		genericcasepage.enterCaseIDIntoTextBoxInMyCases();
	}

	@Given("Verify the case id in mycases")
	public void verify_the_case_id_in_mycases() throws Exception {
		genericcasepage.verifyCaseIdInMyCases();
	}

	@Given("Click on Filter Icon on CaseID column in workbasket cases")
	public void click_on_Filter_Icon_on_CaseID_column_in_workbasket_cases() throws Exception {
		genericcasepage.clickOnFilterIconOnCaseIDColumInWorbasketCases();
	}

	@Given("Enter Case id into the case text textbox in workbasket cases")
	public void enter_Case_id_into_the_case_text_textbox_in_workbasket_cases() throws Exception {
		genericcasepage.enterCaseIDIntoTextBoxInWorkbasketCases();
	}

	@Given("Verify the case id in workbasket cases")
	public void verify_the_case_id_in_workbasket_cases() throws Exception {
		genericcasepage.verifyCaseIdInWorkbasketCases();
	}

	@Given("Click on Filter Icon on CaseID column in workbasket cases NA")
	public void click_on_Filter_Icon_on_CaseID_column_in_workbasket_cases_NA() throws Exception {
		genericcasepage.clickOnFilterIconOnCaseIdColumnInWorkbasketCasesNA();
	}

	@Given("Enter Case id into the case text textbox in workbasket cases NA")
	public void enter_Case_id_into_the_case_text_textbox_in_workbasket_cases_NA() throws Exception {
		genericcasepage.enterCaseIdIntoTheCaseTextTextboxInWorkbasketCasesNA();
	}

	@Given("Verify the case id in workbasket cases NA")
	public void verify_the_case_id_in_workbasket_cases_NA() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.verifyTheCaseIdInWorkbasketCasesNA();
	}

	@Given("Click on Filter Icon on CaseID column in mycases NA")
	public void click_on_Filter_Icon_on_CaseID_column_in_mycases_NA() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnFilterIconOnCaseIDColumnInMyCasesNA();
	}
	
	@Given("Click on Filter Icon on CaseID column in mycases NA SOA")
	public void click_on_Filter_Icon_on_CaseID_column_in_mycases_NA_SOA() throws Exception {
	  genericcasepage.clickonFilterIconOnCaseIDColumnInMyCasesNASOA();
	}

	@Given("Enter Case id into the case text textbox in mycases NA")
	public void enter_Case_id_into_the_case_text_textbox_in_mycases_NA() throws Exception {
		genericcasepage.enterCaseIdIntoTheCaseTextTextboxInMyCasesNA();
	}
	
	@Given("Enter Case id into the case text textbox in mycases NA SOA")
	public void enter_Case_id_into_the_case_text_textbox_in_mycases_NA_SOA() throws Exception {
	    genericcasepage.enterCaseIdIntoTheCaseTextTextboxInMyCasesNASOA();
	}

	@Given("Verify the case id in mycases NA")
	public void verify_the_case_id_in_mycases_NA() throws Exception {
		genericcasepage.verifyTheCaseIdInMyCasesNA();
	}
	

@Given("Verify the case id in mycases NA SOA")
public void verify_the_case_id_in_mycases_NA_SOA() throws Exception {
    genericcasepage.verifyTheCaseIdInMyCasesNASOA();
}

	/* Advance search Generic Case Creation */

	@Then("Click on customer search icon in Advance search screen")
	public void click_on_customer_search_icon_in_Advance_search_screen() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnCustomerSearchIcon();
	}

	@Then("Click on my work icon in Advance search screen")
	public void click_on_my_work_icon_in_Advance_search_screen() throws Exception {
		genericcasepage.clickOnMyWorkIcon();
	}

	@Given("Click on my work icon in Advance search screen NA")
	public void click_on_my_work_icon_in_Advance_search_screen_NA() throws Exception {
		genericcasepage.clickOnMyWorkIconNA();
	}

	@When("Enter {string} into customer number field in Advance search screen")
	public void enter_into_customer_number_field_in_Advance_search_screen(String customernumber) throws Exception {
		genericcasepage.sendAdvanceSearchCustomerNumber(customernumber);
	}

	@Given("Enter customer number {string} and customer name {string} and country code {string} and city {string} and Postal code {string} and street {string} and sales organization {string} and Distribution Channel {string} and Division {string} into customer number field in the Advance search screen")
	// public void
	// enter_customer_number_and_customer_name_and_country_code_and_city_and_Postal_code_and_street_and_sales_organization_and_Distribution_Channel_and_Division_into_customer_number_field_in_Advance_search_screen(String
	// customernumber, String customername, String countrycode, String city, String
	// postalcode, String street, String salesorganization, String
	// distributionchannel, String divsion) throws Exception {
	public void enter_customer_number_and_customer_name_and_country_code_and_city_and_Postal_code_and_street_and_sales_organization_and_Distribution_Channel_and_Division_into_customer_number_field_in_the_Advance_search_screen(
			String customernumber, String customername, String countrycode, String city, String postalcode,
			String street, String salesorganization, String distributionchannel, String divsion) throws Exception {
		genericcasepage.sendAdvanceSearchCustomerSearchDetails(customernumber, customername, countrycode, city,
				postalcode, street, salesorganization, distributionchannel, divsion);
	}

	@When("Click on Search button in Advance search screen")
	public void click_on_Search_button_in_Advance_search_screen() throws Exception {
		genericcasepage.clickOnAdvanceSearchButton();
	}

	@When("Click on two dots button in Advance search screen")
	public void click_on_two_dots_button_in_Advance_search_screen() throws Exception {
		genericcasepage.clickOnTwoDotsButton();
	}

	@When("Click on start research button in Advance search screen")
	public void click_on_start_research_button_in_Advance_search_screen() throws Exception {
		genericcasepage.clickOnAdvanceStartResearch();
		System.out.println("Clicked on Start Research button");
	}

	@When("Click on create generic case button in Advance search screen")
	public void click_on_create_generic_case_button_in_Advance_search_screen() throws Exception {
		genericcasepage.clickOnAdvanceCreateGenericCaseButton();
		System.out.println("Clicked on create generic case button");
	}

	@Given("Select values from {string} and {string} and {string} dropdown in create generic case")
	public void select_values_from_and_dropdown_in_create_generic_case(String typeonevalue, String typetwovalue,
			String typethreevalue) {
		genericcasepage.selectTypeOneAndTypetwoValuesInCreateGenericCase(typeonevalue, typetwovalue, typethreevalue);
	}

	@Given("Select status as {string} in the Create Generic Case\"")
	public void select_status_as_in_the_Create_Generic_Case(String statusvalue) throws Exception {
		genericcasepage.selectUpdateStatusValueFromCGCDropdown(statusvalue);
	}

	@Given("Verify the CFS and CP using {string} and {string} and {string} and {string} in generic case")
	public void verify_the_CFS_and_CP_using_and_in_generic_case(String cfs, String cp, String cfsflag, String cpflag)
			throws Exception {
		genericcasepage.verifyCFSAndCP(cfs, cp, cfsflag, cpflag);
	}

	@Given("Verify the CFS and CP using {string} and {string} in generic case")
	public void verify_the_CFS_and_CP_using_and_in_generic_case(String cfs, String cp) throws Exception {
		genericcasepage.verifyCFSAndCP(cfs, cp);
	}

	@Given("Verify the Email Destination field in General Data tab is same as expected {string}")
	public void verify_the_email_destination_field_in_general_data_tab_is_same_as_expected(
			String expectedemaildestination) throws Exception {
		genericcasepage.verifyUpdatedEmailDestinationFieldInGeneralTab(expectedemaildestination);
	}

	@Given("Verify the updated case status as {string}")
	public void verify_the_updated_case_status_as(String expectedupdatestatus) throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.verifyUpdatedCaseStatus(expectedupdatestatus);
	}
	
	@Given("Verify the options external notes is disabled")
	public void verify_the_options_external_notes_is_displayed() throws Exception {
		genericcasepage.verifyExternalnotes();
	   
	}

	@Given("Verify the update status is disabled")
	public void verify_the_update_status_is_displayed() throws Exception {
		genericcasepage.verifyUpdatestatusess();

	}

	@Given("Verify the cfs and contact person in parties & organization tab are disabled")
	public void verify_the_cfs_and_contact_person_in_parties_organization_tab_are_displayed() throws Exception {
		genericcasepage.verifyCfsAndContactPerson();

	}

	
	@Then("Verify the edit button is disabled")
	public void verify_the_edit_button_is_disabled() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.verifyTheEditButtonStatus();
	}

	@Given("Verify the remarks updated under Case Status Remarks tab {string}")
	public void verify_the_remarks_updated_under_case_status_remarks_tab(String expectedcasestatusremarks)
			throws Exception {
		genericcasepage.verifyCaseStatusRemarks(expectedcasestatusremarks);
	}

	@Given("Verify the case status old value {string} and new value {string} and case responsible old value {string} and new value {string} under Case Change Log tab based on work status {string} and case responsible old value {string}")
	public void verify_the_case_status_old_value_and_new_value_and_case_responsible_old_value_and_new_value_under_Case_Change_Log_tab_based_on_work_status_and_case_responsible_old_value(
			String expectedstatus_oldvalue, String expectedstatus_newvalue, String expectedcaseresponsible_oldvalue,
			String expectedcaseresponsible_newvalue, String actiontypeworkstatus, String actiontypecaseresponsible)
			throws Exception {
		genericcasepage.verifyCaseStatusAndCaseResponsible(expectedstatus_oldvalue, expectedstatus_newvalue,
				expectedcaseresponsible_oldvalue, expectedcaseresponsible_newvalue, actiontypeworkstatus,
				actiontypecaseresponsible);
	}

	@Given("Click on SendMail link")
	public void click_on_SendMail_link() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnsendMailLink();
	}

	@Given("Click on Contact Person button")
	public void click_on_Contact_Person_button() throws Exception {
		genericcasepage.clickOnContactPersonBtn();
	}

	@Given("Select Contact Person checkbox")
	public void select_Contact_Person_checkbox() throws Exception {
		genericcasepage.clickOnContactPersonChkbox();
	}

	@Given("Click on Contact Person Submit button")
	public void click_on_Contact_Person_Submit_button() throws Exception {
		genericcasepage.clickOnContactPersonSubmitBtn();
	}

	@Given("Select purpose of email {string}")
	public void select_purpose_of_email(String purposeofemail) throws Exception {
		genericcasepage.clickOnPurposeOfEmailBtn(purposeofemail);
	}
	

@Given("Verify the values present in the Email Destination {string} and {string} and {string} dropdown field")
public void verify_the_values_present_in_the_Email_Destination_and_and_dropdown_field(String EDvalue1, String EDvalue2, String EDvalue3) throws Exception {
        genericcasepage.verifyEmailDestinationDropdownValues(EDvalue1,EDvalue2,EDvalue3);
}
	


	@Given("Select email destination {string} from dropdown")
	public void select_email_destination_from_dropdown(String emaildestination) throws Exception {
		genericcasepage.selectEmailDestination(emaildestination);
	}

	@Given("Click on sendmail button")
	public void click_on_sendmail_button() throws Exception {
		genericcasepage.clickOnSendEmailBtn();
	}

	@When("Click on three dots button in search with case id")
	public void click_on_three_dots_button_in_search_with_case_id() throws Exception {
		genericcasepage.clickOnThreeDotsInSearchCaseId();
	}

	@When("Click on Email Information tab")
	public void click_on_email_information_tab() throws Exception {
		genericcasepage.clickOnEmailInformationTab();
	}

	@When("Verify the reply email attachment is present for {string}")
	public void verify_the_reply_email_attachment_is_present(String caseid) throws Exception {
		genericcasepage.verifyEmailSubjectForRE(caseid);
	}

	@When("Verify the message case cannot be created {string}")
	public void verify_the_message_case_cannot_be_created(String message) throws Exception {
		genericcasepage.verifyCaseCanNotCreate(message);
	}

	@Then("Click on Assign To button")
	public void click_on_assign_to_button() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnAssignToButton();
	}
	
	
	@Given("Verify the values in AssignTo button {string} and {string} and {string} and {string}")
	public void verify_the_values_in_AssignTo_button_and_and_and(String assigntocfs,String assigntowb,String assingtonewassignee,String assigntopreviousassignee) throws Exception {
	   genericcasepage.verifyTheAssignToOptions(assigntocfs,assigntowb,assingtonewassignee,assigntopreviousassignee);
	}
	
	@Given("Verify the values in AssignTo button {string} and {string} and {string}")
	public void verify_the_values_in_AssignTo_button_and_and(String assigntocfs,String assigntowb,String assingtonewassignee) throws Exception {
	   genericcasepage.verifyTheAssignToOptionsInitial(assigntocfs,assigntowb,assingtonewassignee);
	}

	@Then("Click on Assign To CFS button")
	public void click_on_assign_to_cfs_button() throws Exception {
		genericcasepage.clickOnAssignToCFSButton();
	}

	@Then("Click on case id in My Cases tab")
	public void click_on_case_id_in_my_cases_tab() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.closeCaseIdTab();
		genericcasepage.clickOnCaseIdLinkInMyCasesTab();

	}

	@Then("Click on Case Change Log tab")
	public void click_on_case_change_log_tab() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnCaseChangeLogTab();

	}

	@Then("Click on Assign To Previous Assignee")
	public void click_on_assign_to_previous_assignee() throws Exception {
		genericcasepage.clickOnAssignToPreviousAssigneeButton();
	}

	@Then("Close the browser")
	public void Close_the_browser() throws Exception {
		genericcasepage.closeBrowser();
	}

	@Then("Click on Assign To New Assignee")
	public void click_on_assign_to_new_assignee() throws Exception {
		genericcasepage.clickOnAssignToNewAssigneeButton();
	}

	@Then("Select the previous Assignee and click on submit")
	public void select_the_previous_assignee_and_click_on_submit() throws Exception {
		genericcasepage.selectPreviousAssigneeFromDropdown();
	}
	
	@Given("Select the New Assignee {string} and Assign to type {string} click on submit NA")
	public void select_the_New_Assignee_and_Assign_to_type_click_on_submit_NA(String newassignee, String assigntotype) throws Exception {
		genericcasepage.selectnewAssigneeFromDropdown(newassignee,assigntotype);
	}

//	@Then("Select the New Assignee {string} and click on submit")
//	public void select_the_new_assignee_and_click_on_submit(String newassignee) throws Exception {
//		genericcasepage.selectnewAssigneeFromDropdown(newassignee);
//	}
	
	

	@Then("Select the New Assignee {string} and click on submit NA")
	public void select_the_new_assignee_and_click_on_submit_NA(String newassignee) throws Exception {
		genericcasepage.selectnewAssigneeFromDropdownNA(newassignee);
	}
	

@Given("Click on close tab")
public void click_on_close_tab() throws Exception {
    genericcasepage.clickOnCloseTab();
}

	@Then("Click on Assign To Workbasket link")
	public void click_on_assign_to_workbasket_link() throws Exception {
		genericcasepage.clickOnAssignToWBLink();
	}

	@Then("Click on My Workbasket tab in Home page")
	public void click_on_my_workbasket_tab_in_home_page() throws Exception {
		genericcasepage = new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.clickOnWBTab();
	}

	@Then("Select workbasket {string} from view Queue for dropdown")
	public void select_workbasket_from_view_queue_for_dropdown_and_click_on_case_id(String workbasketname)
			throws Exception {
		genericcasepage.clickOnViewQueueForDropdown(workbasketname);
		// genericcasepage.clickOnCaseIdLinkInMyWB_ViewQueueForResultsTab();
	}
	
/* Advance search */
	
	
	@Then("select Advance case search from left side panel")
	public void select_Advance_case_search_from_left_side_panel() throws Exception {
		genericcasepage=new GenericCasePage(TestBase.getDriver());
		genericcasepage.clickOnAdvanceSearch();
	    
	}
	
	@Given("Enter {string} number in the sales organization field")
	public void enter_number_in_the_sales_organization_field(String SalesOrg) throws Exception {
		genericcasepage=new GenericCasePage(TestBase.getDriver());
		genericcasepage.sendGenericCaseObject(genericcasepage);
		genericcasepage.enterSalesOrganization(SalesOrg);
	}
	
	@Given("click on search button in the advance search screen")
	public void click_on_search_button_in_the_advance_search_screen() throws Exception {
		genericcasepage=new GenericCasePage(TestBase.getDriver());
		genericcasepage.clickOnSearchButton();
	}
	
	
	@Given("click on Export to excel button in advance search screen")
	public void click_on_Export_to_excel_button_in_advance_search_screen() throws Exception {
		genericcasepage.clickOnExportToExcel();
	}
	
	@Given("click on clear button in advance search screen")
	public void click_on_clear_button_in_advance_search_screen() throws Exception {
		genericcasepage.clickOnClearButton();
	}
	
	@Given("Select values from {string} and {string} and {string} dropdown in advance search")
	public void select_values_from_and_and_dropdown_in_advance_search(String type1, String type2, String type3) throws Exception {
	  genericcasepage.enterTypologiesInAdvanceSearch(type1,type2,type3);
}
	@Then("select {string} as generic case and select {string} as Pendinginprgress in advance search screen")
	public void select_as_generic_case_and_select_as_Pendinginprgress_in_advance_search_screen(String casetype, String currentcasestatus) throws Exception {
	  genericcasepage.selectCaseTypeCurrentCaseStatus(casetype,currentcasestatus);
	}
	
	@Then("Enter {string} in Advance search")
	public void enter_in_Advance_search(String SalesOrderNumber) throws Exception {
	   genericcasepage.enterSalesOrderNumberAdvanceSearch(SalesOrderNumber);
	}
	
	@Then("select current case responsbile {string} in advance search")
	public void select_current_case_responsbile_in_advance_search(String CurrentCaseResponsible) throws Exception {
	   genericcasepage.enterCaseResponsible(CurrentCaseResponsible);
	}
	
	@Then("select case creator {string} in advance search screen")
	public void select_case_creator_in_advance_search_screen(String casecreator) throws Exception {
	  genericcasepage.enterCaseCreator(casecreator);
	}
	
	@Then("enter case number {string} in advance search")
	public void enter_case_number_in_advance_search(String casenumber) throws Exception {
	  genericcasepage.enterCaseNumber(casenumber);
	}
	
}
