package com.cucumber.framework.stepDef;

import java.io.IOException;

import org.apache.log4j.Logger;

import com.cucumber.framework.PageObjects.PegaBot;
import com.cucumber.framework.PageObjects.Pulse;
import com.cucumber.framework.TestBase.TestBase;
import com.cucumber.framework.helper.Logger.LoggerHelper;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PegaBotTest {

	private final Logger log = LoggerHelper.getLogger(PegaBotTest.class);

	PegaBot pegabot;

	@Given("Using Pega Bot Create a Case id and assign to CFS {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and verify in the app using {string} and {string}")
	public void using_Pega_Bot_Create_a_Case_id_and_assign_to_CFS_and_and_and_and_and_and_and_and_and_and_and_and_and_and_verify_in_the_app_using_and(
			String Salesorg, String Customerriskcategory, String Customernumber, String Customernumbershipto,
			String Customernumberpayer, String Divison, String Distributionchannel, String Currency, String CreditLimit,
			String CreditLimitUsage, String NextDate, String PastDue, String WeightAvgDays, String Creditlimitusage_TR,
			String username, String password) throws Exception {
		pegabot = new PegaBot(TestBase.getDriver());
		pegabot.sendPegaBotPageObject(pegabot);
		pegabot.putRequestSalesOrderNumber(Salesorg, Customerriskcategory, Customernumber, Customernumbershipto,
				Customernumberpayer, Divison, Distributionchannel, Currency);
		pegabot.VerifyCase(username, password);
		pegabot.getRequestCasesUsingBot();
		pegabot.putRequestChangeCaseToRouting(CreditLimit, CreditLimitUsage, NextDate, PastDue, WeightAvgDays,
				Creditlimitusage_TR);
	}

	@Given("Using Pega Bot Create a Case id and assign to CFS {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and {string} and verify in the app using {string} and {string} to verify bot WB SLA and Edit button")
	public void using_Pega_Bot_Create_a_Case_id_and_assign_to_CFS_and_and_and_and_and_and_and_and_and_and_and_and_and_and_verify_in_the_app_using_and_to_verify_bot_WB_SLA_and_Edit_button(
			String Salesorg, String Customerriskcategory, String Customernumber, String Customernumbershipto,
			String Customernumberpayer, String Divison, String Distributionchannel, String Currency, String CreditLimit,
			String CreditLimitUsage, String NextDate, String PastDue, String WeightAvgDays, String Creditlimitusage_TR,
			String username, String password) throws Exception {
		pegabot = new PegaBot(TestBase.getDriver());
		pegabot.sendPegaBotPageObject(pegabot);
		pegabot.putRequestSalesOrderNumber(Salesorg, Customerriskcategory, Customernumber, Customernumbershipto,
				Customernumberpayer, Divison, Distributionchannel, Currency);
		pegabot.VerifyCase(username, password);

	}

	@When("User Clicks on the case id to verify BOT Request and Response")
	public void user_Clicks_on_the_case_id_to_verify_BOT_Request_and_Response() throws Exception {
		pegabot.clickOnCaseIDToVerifyBotRequestResponse();
	}
	
	@Then("Verify the Case Responsible as {string} and SLA as {string}")
	public void verify_the_Case_Responsible_as_and_SLA_as(String caseresponsible, String sla) throws Exception {
	   pegabot.verifyTheCaseResponsbile_SLA(caseresponsible,sla);  
	}

	@When("User Clicks on the case id")
	public void user_Clicks_on_the_case_id() throws Exception {
		pegabot.clickCaseID();
	}
	

	@Then("Perform the get request of BOT")
	public void perform_the_get_request_of_BOT() throws IOException {
		pegabot.getRequestCasesUsingBot();
	}
	
	@Given("Verify the case is creating or not for the existing or new sales order number {string} by logging into the application with username {string} and password {string}")
	public void verify_the_case_is_creating_or_not_for_the_existing_or_new_sales_order_number_by_logging_into_the_application_with_username_and_password(String salesordernumber, String username, String password) throws Exception {
		pegabot = new PegaBot(TestBase.getDriver());
		pegabot.sendPegaBotPageObject(pegabot);
	   pegabot.verifyCaseUsingSalesOrderNumber(username, password, salesordernumber);
	}

}
