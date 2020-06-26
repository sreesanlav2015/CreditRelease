package com.cucumber.framework.PageObjects;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.prefs.Preferences;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import org.testng.Reporter;

import com.cucumber.framework.CS.CustomerServ;
import com.cucumber.framework.GeneralHelperSel.SeleniumFunc;
import com.cucumber.framework.helper.Logger.LoggerHelper;

public class GenericCasePage extends CustomerServ implements GenericCasePageLoc {
	private final Logger log = LoggerHelper.getLogger(GenericCasePage.class);
	GenericCasePage genericcasepage;
	String actualcaseid_value;
	static String Pref_actualcaseid_value = "";
	static Preferences prefs;

	public GenericCasePage(WebDriver driver) {
		super(driver);
	}

	public void sendGenericCaseObject(GenericCasePage genericcasepage) {
		this.genericcasepage = genericcasepage;
	}

	public void selectCustomersFromdropdown(String value) {
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_searchcustomer_dd, value);
	}

	public void enterCustomerNumberIntoSearchField(String customernumber) throws Exception {
		xpath_GenericMethod_Sendkeys(xpath_customernumber_textbox, customernumber);
	}

	public void clickSearchIconbtn() throws Exception {
		xpath_GenericMethod_Click(xpath_searchicon_btn);

	}

	public void verifyResult(String expectedresult) throws Exception {
		String acustno = xpath_Genericmethod_getElementText(xpath_custno_element);
		// String acustno = xpath_Genericmethod_getElementText(xpath_gcno_element);
		System.out.println(acustno);
		if (expectedresult.equalsIgnoreCase(acustno)) {
			System.out.println("Both are same");
		}
		boolean b = xpath_Genericmethod_VerifyTextEquals(
				"//tbody/tr[@id='$PpySearchResults$ppxResults$l1']/td/div/span[text()='" + expectedresult + "']",
				expectedresult);

		// boolean c = xpath_Genericmethod_VerifyTextEquals(
		// "//tbody/tr[@id='$PD_SearchResultsFor_pa73090759419362pz$ppxResults$l1']/td/div/span[text()='"
		// + expectedresult + "']",
		// expectedresult);
		Assert.assertTrue(b, "Expected result :" + expectedresult + "is not same as actual result");
	}

	public void clickOnThreeDots() throws Exception {
		xpath_GenericMethod_Click(xpath_threedots_btn);
	}

	public void clickOnStartResearchbtn() throws Exception {
		xpath_GenericMethod_Click(xpath_startresearch_btn);
	}

	public void hoverOnAddtaskBtn() throws Exception {
		/*
		 * try { xpath_GenericMethod_HoverOnDemoScreenPops(xpath_Addtask_btn1);
		 * }catch(Exception e) { System.out.println(e.getMessage()); }
		 */
		// waitFor(1);
		driver.switchTo().defaultContent();
		// PegaGadget2Ifr

//		waitFor(1);
		driver.switchTo().frame("PegaGadget2Ifr");
//		waitFor(1);
		WebElement ele = driver.findElement(By.xpath(xpath_Addtask_btn1));
		waitForElement(ele, 1);
		Actions action = new Actions(driver);
		action.moveToElement(ele).build().perform();
		// xpath_GenericMethod_Click(xpath_addtasks_btn);
//		waitFor(1);
		xpath_GenericMethod_Click(xpath_addtask_btn);
	}

	public void hoverOnAddtaskBtnInAdvanceSearch() throws Exception {
		/*
		 * try { xpath_GenericMethod_HoverOnDemoScreenPops(xpath_Addtask_btn1);
		 * }catch(Exception e) { System.out.println(e.getMessage()); }
		 */
		// waitFor(1);
		driver.switchTo().defaultContent();
		// PegaGadget2Ifr

//		waitFor(1);
		driver.switchTo().frame("PegaGadget1Ifr");
//		waitFor(1);
		WebElement ele = driver.findElement(By.xpath(xpath_Addtask_btn1));
		waitForElement(ele, 1);
		Actions action = new Actions(driver);
		action.moveToElement(ele).build().perform();
		// xpath_GenericMethod_Click(xpath_addtasks_btn);
//		waitFor(1);
		xpath_GenericMethod_Click(xpath_addtask_btn);
	}

	public void clickOnAddTaskbtn() throws Exception {
		// waitFor(2);
		xpath_GenericMethod_Click(xpath_addtask_btn);
	}

	public void clickOnServiceCase(String servicecase) throws Exception {
		// waitFor(3);
		xpath_GenericMethod_Click("//a[text()='" + servicecase + "']");
	}

	public void clickOnAddTasksbtn() throws Exception {
		xpath_GenericMethod_Click(xpath_addtasks_btn);
//		waitFor(1);
	}

	public void selectTypeOneAndTypetwoValues(String typeone, String typetwo, String typethree) {
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_type1_dd, typeone);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_type2_dd, typetwo);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_type3_dd, typethree);
	}

	public void clickOnPartiesAndOrganizationTab() throws Exception {
		xpath_GenericMethod_Click(xpath_parties_Org_tab);
	}

	public void selectSalesOrgAndDistChannelAndDivision(String salesorg, String distchannel, String division) {
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_salesorg_dd, salesorg);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_distchnl_dd, distchannel);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_division_dd, division);
	}

	public void clickOnSaveButtonKato() throws Exception {

//		waitFor(3);
		xpath_GenericMethod_Click(xpath_save_btn_kato);
//		waitFor(2);

		try {
			driver.switchTo().alert().accept();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		// waitFor(2);
	}

	public void clickOnSaveButtonNA() throws Exception {

//		waitFor(3);
		xpath_GenericMethod_Click(xpath_save_btn_na);
//		waitFor(2);

		try {
			driver.switchTo().alert().accept();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		// waitFor(2);
	}

	public void verifyCaseCreated() throws Exception {
//		waitFor(3);
		boolean caseid = xpath_Genericmethod_verifyElementPresent(xpath_genericcase_id);
		String caseid_value = xpath_Genericmethod_getElementText(xpath_genericcase_id);
		System.out.println("Case Id Value is: " + caseid_value);
		actualcaseid_value = caseid_value.substring(1, caseid_value.length() - 1);
		saveCaseIdPreference(actualcaseid_value);
		System.out.println(actualcaseid_value);
		Reporter.log("Case Id Generated is :" + actualcaseid_value);
		Assert.assertTrue(caseid, "Generic case has not been created");
	}

	public static void saveCaseIdPreference(String actualcaseid_value) {
		prefs = Preferences.userNodeForPackage(GenericCasePage.class);
		prefs.put(Pref_actualcaseid_value, actualcaseid_value);
	}

	public static String getCaseIdPreference() {
		prefs = Preferences.userNodeForPackage(GenericCasePage.class);
		return prefs.get(Pref_actualcaseid_value, Pref_actualcaseid_value);
	}

	public void verifySLA(String expectedsla) throws Exception {
		String actualsla = xpath_Genericmethod_getElementText(xpath_sla);
		Reporter.log("Actual SLA is: " + actualsla + " " + "Expected SLA is: " + expectedsla);
		Assert.assertEquals(actualsla, expectedsla, "SLA doesn't match");
	}

	public void verifyExpectedResolutionTime() throws Exception {
		System.out.println("In verifyExpectedResolutionTime");
	}

	public void clickOnEditButton() throws Exception {
		driver.navigate().refresh();
		xpath_GenericMethod_Click(xpath_edit_btn);

		/*
		 * waitFor(3); driver.switchTo().defaultContent();
		 * driver.switchTo().frame("PegaGadget1Ifr");
		 * driver.findElement(By.xpath(xpath_edit_btn)).click();
		 * driver.switchTo().defaultContent();
		 */

	}

	public void verifyCreditLimitUsageExclFutureOrdersInPercentage(String creditlimitusagepercentage) throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_credit_data_tab);
		String creditlimitusagepercentagee = SeleniumFunc
				.xpath_Genericmethod_getElementText(xpath_credit_limit_usage_percentage);
		System.out.println("credit limit usage percentage is : " + creditlimitusagepercentagee);
		Assert.assertEquals(creditlimitusagepercentagee, creditlimitusagepercentage, "Actual Value is : "
				+ creditlimitusagepercentagee + "Expected Value is: " + creditlimitusagepercentage + "are not equal");
		Reporter.log("Actual Value is : " + creditlimitusagepercentagee + "Expected Value is: "
				+ creditlimitusagepercentage + "are not equal");
		System.out.println("Actual Value is : " + creditlimitusagepercentagee + "Expected Value is: "
				+ creditlimitusagepercentage + "are not equal");
	}

	public void clickOnEditButtontwo() throws Exception {

		driver.navigate().refresh();
		xpath_GenericMethod_Click(xpath_edit_btn_two);

	}

	public void sendNewRDDDate() throws Exception {
		 SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_new_rdd_date, "8/15/2020");
		 SeleniumFunc.xpath_GenericMethod_Key_SendKeys(xpath_new_rdd_date, Keys.ENTER);
		 SeleniumFunc.xpath_GenericMethod_Key_SendKeys(xpath_new_rdd_date, Keys.TAB);
//		driver.switchTo().defaultContent();
//		driver.switchTo().frame("PegaGadget1Ifr");
//		driver.findElement(By.xpath(xpath_new_rdd_date)).sendKeys("8/15/2020");
////		waitFor(2);
//		driver.findElement(By.xpath(xpath_new_rdd_date)).sendKeys(Keys.ENTER);
////		waitFor(2);
//		driver.findElement(By.xpath(xpath_new_rdd_date)).sendKeys(Keys.TAB);
////		waitFor(2);
//		driver.switchTo().defaultContent();
//		
		
	}

	public void clickOnEditButtonFromMyCasesOrMyWB() throws Exception {
		try {
			xpath_GenericMethod_Click(xpath_casedesc_cgc_textbox);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		xpath_GenericMethod_Click(xpath_edit_btn);
	}

	public void clickOnOtherActionsButton() throws Exception {

		// WebElement claimindicator =
		// driver.findElement(By.xpath(xpath_otheractions_btn));
		// JavascriptExecutor js = null;
		// js.executeScript("arguments[0].click();", claimindicator);
		xpath_GenericMethod_Click(xpath_otheractions_btn);
	}

	public void clickOnUpdateStatusLink() throws Exception {
		xpath_GenericMethod_Click(xpath_updatestatus_link);
	}

	public void clickOnCancelOrderLink() throws Exception {

		xpath_GenericMethod_Click(xpath_cancel_order_link);
	}

	public void validateCancelOrderValidationMessage(String cancelordervalidationmessage) {

		try {
			String cancelorder_text = SeleniumFunc.getElementText(xpath_cancel_order_validation_message);
			System.out.println("Actual Cancel Order Validation Message is : " + cancelorder_text + " " + "Expected is: "
					+ cancelordervalidationmessage);
			Reporter.log("Actual Cancel Order Validation Message is : " + cancelorder_text + " " + "Expected is: "
					+ cancelordervalidationmessage);
			Assert.assertEquals(cancelorder_text, cancelordervalidationmessage,
					"Actual and Expected values are not same");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	public void clickOnOtherActionsValue(String otheractionvalue) throws Exception {
		String xpath_other_action_value_link = "//a/span[@class='menu-item-title-wrap']/span[text()='"
				+ otheractionvalue + "']";
		xpath_GenericMethod_Click(xpath_other_action_value_link);
	}

	public void verifyUpdateStatusValue(String updatestatusvalue) throws Exception {
		String update_status_value = "//a/span[@class='menu-item-title-wrap']/span[text()='" + updatestatusvalue + "']";
		boolean b = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(update_status_value);
		Reporter.log("Update Status element present is: " + b);
		System.out.println("Update Status element present is: " + b);
		Assert.assertTrue(b, "Element" + updatestatusvalue + "is not present");
	}

	public void verifySendMailAndTriggerS0A(String sendmailvalue, String triggersoavalue) throws Exception {
		String send_mail_value = "//a/span[@class='menu-item-title-wrap']/span[text()='" + sendmailvalue + "']";
		boolean c = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(send_mail_value);
		Reporter.log("Send Mail element present is: " + c);
		System.out.println("Send Mail element present is: " + c);
		Assert.assertTrue(c, "Element " + send_mail_value + " is not present ");

		String trigger_soa_value = "//a/span[@class='menu-item-title-wrap']/span[text()='" + triggersoavalue + "']";
		boolean d = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(trigger_soa_value);
		Reporter.log("Trigger SOA element present is: " + d);
		System.out.println("Trigger SOA element present is: " + d);
		Assert.assertTrue(d, "Element " + trigger_soa_value + " is not present ");
	}
	
	public void verifySendMailAndApproveReject(String sendmailvalue, String approverejectvalue) throws Exception {
		String send_mail_value = "//a/span[@class='menu-item-title-wrap']/span[text()='" + sendmailvalue + "']";
		boolean c = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(send_mail_value);
		Reporter.log("Send Mail element present is: " + c);
		System.out.println("Send Mail element present is: " + c);
		Assert.assertTrue(c, "Element " + send_mail_value + " is not present ");

		String approve_reject_value = "//a/span[@class='menu-item-title-wrap']/span[text()='" + approverejectvalue + "']";
		boolean d = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(approve_reject_value);
		Reporter.log("Approve / Reject element present is: " + d);
		System.out.println("Approve / Reject element present is: " + d);
		Assert.assertTrue(d, "Element " + approve_reject_value + " is not present ");
	}

	public void clickOnApproveRejectLink() throws Exception {
		xpath_GenericMethod_Click(xpath_approve_reject_link);
	}

	public void clickTriggerSOA() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_trigger_SOA_link);
	}

	public void clickOnManualOrderRevisionLink() throws Exception {
		xpath_GenericMethod_Click(xpath_manual_oreder_revision_link);
	}

	public void clickOnCopyCaseLink() throws Exception {
		xpath_GenericMethod_Click(xpath_copycase_link);
//		waitFor(3);

	}

	public void clickOnNewTab() throws Exception {
		xpath_GenericMethod_Click(xpath_new_tab);
	}

	public void selectUpdateStatusValueFromDropdown(String statusvalue) throws Exception {
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_updatestatus_dd, statusvalue);
		// xpath_GenericMethod_Sendkeys(xpath_remarksinupdatestatus_textbox,
		// statusvalue);
	}

	public void selectChooseActionStatusValueFromDropdown(String statusvalue) throws Exception {
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_choose_action_dd, statusvalue);
		// xpath_GenericMethod_Sendkeys(xpath_remarksinupdatestatus_textbox,
		// statusvalue);
	}

	public void enterContactPersonMailID(String contactpersonmaild) throws Exception {
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_contactpersonmailid, contactpersonmaild);
	}

	public void verifyTheOptionPendingResponseAndInformationOnly(String value) throws Exception {

		boolean b = Boolean.parseBoolean(value);

		boolean emailinformationfield = false;
		try {
			emailinformationfield = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(xpath_informationonly_btn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("InformationOnly element displayed is: " + emailinformationfield);
		Reporter.log("InformationOnly element displayed is: " + emailinformationfield);
		Assert.assertEquals(emailinformationfield, b, "Actual and Expected are not same");

		boolean pendingresponsefield = false;
		try {
			pendingresponsefield = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(xpath_pendingresponseonly_btn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("PendingResponse element displayed is : " + pendingresponsefield);
		Reporter.log("PendingResponse element displayed is : " + pendingresponsefield);
		Assert.assertEquals(pendingresponsefield, b, "Actual and Expected are not same");
	}

	public void verifyExternalnotes() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_externalnotes_tab_xpath);
		boolean b = SeleniumFunc.xpath_GenericMethod_IsEnabled(xpath_externalnotes_btn);
		System.out.println("External notes element enabled is :" + b);
		Reporter.log("External notes element enabled is :" + b);
		Assert.assertEquals(b, true, "Actual and Expected are not same");
	}

	public void verifyUpdatestatusess() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_otheractions_btn);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_updatestatus_link);
		boolean b = SeleniumFunc.xpath_GenericMethod_IsEnabled(xpath_updatestatus_dd);
		System.out.println("Update Status element enabled is :" + b);
		Reporter.log("Update Status element enabled is :" + b);
		Assert.assertEquals(b, true, "Actual and Expected are not same");
	}

	public void verifyCfsAndContactPerson() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_partiesorganization_tab);
		boolean b = SeleniumFunc.xpath_GenericMethod_IsEnabled(xpath_cfs_dropdown);
		System.out.println("CFS element enabled is :" + b);
		Reporter.log("CFS element enabled is :" + b);
		Assert.assertEquals(b, true, "Actual and Expected are not same");

		boolean c = SeleniumFunc.xpath_GenericMethod_IsEnabled(xpath_cp_dropdown);
		System.out.println("CP element enabled is :" + b);
		Reporter.log("CP element enabled is :" + b);
		Assert.assertEquals(c, true, "Actual and Expected are not same");

	}

	public void selectManualOrderRevisionStatusValueFromDropdown(String manualorderrevision) throws Exception {
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_manual_order_revision_dd,
				manualorderrevision);
		// xpath_GenericMethod_Sendkeys(xpath_remarksinupdatestatus_textbox,
		// manualorderrevision);
	}

	public void waitForBot() throws Exception {
		SeleniumFunc.waitFor(180);
		xpath_GenericMethod_Click(xpath_refresh);
	}

	public void waitForBotAuto() throws Exception {
		SeleniumFunc.waitFor(10);
		driver.navigate().refresh();
		// xpath_GenericMethod_Click(xpath_refresh);
	}

	public void clickOnSubmitButtonInUpdateStatus() throws Exception {
		xpath_GenericMethod_Click(xpath_updatestatus_submit_btn);
	}

	public void clickOnFollowButton() throws Exception {

		xpath_GenericMethod_Click(xpath_follow_button);

	}

	public void clickOnHomeTab() throws Exception {
		xpath_GenericMethod_Click(xpath_home_tab);
	}

	public void clickOnReport() throws Exception {
		SeleniumFunc.xpath_GenericMethod_HoverOnDemoScreenPops(xpath_myreport_Hover);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_myreport_link);
	}

	public void clickOnBRELogLink() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_bre_log_link);
	}

	public void verifyBRELogStatus() throws Exception {
		String stored_caseid = getCaseIdPreference();
		String bre_caseid = SeleniumFunc.xpath_Genericmethod_getElementText(xpath_caseid_bre);
		try {
			if (stored_caseid.equalsIgnoreCase(bre_caseid)) {
				String bre_status = SeleniumFunc.xpath_Genericmethod_getElementText(xpath_bre_status);
				if (bre_status.equalsIgnoreCase("Success")) {
					System.out.println(
							"Actual BRE Log case id is: " + bre_caseid + "And actual BRE status is: " + bre_status);
					Reporter.log(
							"Actual BRE Log case id is: " + bre_caseid + "And actual BRE status is: " + bre_status);
				}
			} else {
				System.out.println("No Matching case ID found");
			}
		} catch (Exception e) {
			System.out.println("No Matching case ID found in Exception block" + e.getMessage());
		}
	}

	public void clickOnFollowCasesTab() throws Exception {
//		waitFor(2);
		xpath_GenericMethod_Click(xpath_followedcases_header);
	}

	public void clickOnFilterIconOnCaseIDColumn() throws Exception {
		xpath_GenericMethod_Click(xpath_filtercaseid_followedcase);
//		waitFor(3);
		// xpath_GenericMethod_Click(xpath_filetercaseid_mywb);
		// xpath_GenericMethod_Click(xpath_filtercasaeid_mycaseid);
		// xpath_GenericMethod_Click(xpath_filtercaseid_nacaseid);
	}

	public void enterCaseIDIntoTextBox() throws Exception {
		String stored_caseid = getCaseIdPreference();
//		waitFor(3);
		// xpath_GenericMethod_Sendkeys(xpath_searchtextinfilterwb, stored_caseid);
		// xpath_GenericMethod_Sendkeys(xpath_searchtextinfiltermycaseid,
		// stored_caseid);
		// xpath_GenericMethod_Sendkeys(xpath_searchtextinfilternamycaseidid,
		// stored_caseid);
		xpath_GenericMethod_Sendkeys(xpath_searchtextinfilterfollowedcase, stored_caseid);
	}

	public void clickOnApplyButton() throws Exception {
		xpath_GenericMethod_Click(xpath_applyinfiltercaseid_btn);
	}

	public void verifyCaseId() throws Exception {
		clickOnCaseIDFromFollowedCases();
	}

	public void clickOnFilterIconOnCaseIDColumInFollowedcases() throws Exception {
		xpath_GenericMethod_Click(xpath_filtercaseid_followedcase);
//		waitFor(3);
	}

	public void enterCaseIDIntoTextBoxInFollowedCases() throws Exception {
		String stored_caseid = getCaseIdPreference();
//		waitFor(3);
		xpath_GenericMethod_Sendkeys(xpath_searchtextinfilterfollowedcase, stored_caseid);
	}

	public void verifyCaseIdInFollowedCases() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_MyFollowed_caseid, xpathend_MyFollowed_caseid,
				2);
	}

	public void clickOnFilterIconOnCaseIDColumInMyCases() throws Exception {
//		waitFor(2);
		xpath_GenericMethod_Click(xpath_filtercasaeid_mycaseid);
	}

	public void enterCaseIDIntoTextBoxInMyCases() throws Exception {
		String stored_caseid = getCaseIdPreference();
//		waitFor(2);
		xpath_GenericMethod_Sendkeys(xpath_searchtextinfiltermycaseid, stored_caseid);
	}

	public void verifyCaseIdInMyCases() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_mycases_caseid, xpathend_mycases_caseid, 2);
	}

	public void clickOnFilterIconOnCaseIDColumInWorbasketCases() throws Exception {
		xpath_GenericMethod_Click(xpath_filetercaseid_mywb);
	}

	public void enterCaseIDIntoTextBoxInWorkbasketCases() throws Exception {
		String stored_caseid = getCaseIdPreference();
//		waitFor(3);
		xpath_GenericMethod_Sendkeys(xpath_searchtextinfilterwb, stored_caseid);
	}

	public void verifyCaseIdInWorkbasketCases() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_mywb_caseid, xpathend_mywb_caseid, 2);
	}

	public void clickOnFilterIconOnCaseIdColumnInWorkbasketCasesNA() throws Exception {
//		waitFor(3);
		xpath_GenericMethod_Click(xpath_filtercaseid_namywbid);
	}

	public void enterCaseIdIntoTheCaseTextTextboxInWorkbasketCasesNA() throws Exception {
		String stored_caseid = getCaseIdPreference();
//		waitFor(3);
		xpath_GenericMethod_Sendkeys(xpath_searchtextinfilterwbna, stored_caseid);
	}

	public void verifyTheCaseIdInWorkbasketCasesNA() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_mywbna_caseid, xpathend_mywbna_caseid, 2);
	}

	public void clickOnFilterIconOnCaseIDColumnInMyCasesNA() throws Exception {
//		waitFor(3);
		xpath_GenericMethod_Click(xpath_filtercaseid_nacaseid);
	}

	public void clickonFilterIconOnCaseIDColumnInMyCasesNASOA() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_filtercaseid_nacaseid_SOA);
	}

	public void enterCaseIdIntoTheCaseTextTextboxInMyCasesNA() throws Exception {
		String stored_caseid = getCaseIdPreference();
//		waitFor(3);
		xpath_GenericMethod_Sendkeys(xpath_searchtextinfilternamycaseid, stored_caseid);
	}

	public void enterCaseIdIntoTheCaseTextTextboxInMyCasesNASOA() throws Exception {
		String stored_caseid = getCaseIdPreference();
//		waitFor(3);
		xpath_GenericMethod_Sendkeys(xpath_searchtextinfilternamycaseid_SOA, stored_caseid);
	}

	public void verifyTheCaseIdInMyCasesNA() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_namycases_caseid, xpathend_namycases_caseid, 2);
	}

	public void verifyTheCaseIdInMyCasesNASOA() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_namycases_caseid_SOA,
				xpathend_namycases_caseid_SOA, 2);
	}

	public void clickOnCustomerSearchIcon() throws Exception {
		try {
//			waitFor(3);
			xpath_GenericMethod_HoverOnDemoScreenPops(xpath_advancecustomersearch_icon_hover);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		xpath_GenericMethod_Click(xpath_advancecustomersearch_icon_link);

	}

	public void clickOnMyWorkIcon() throws Exception {
		try {
//			waitFor(3);
			xpath_GenericMethod_HoverOnDemoScreenPops(xpath_advancecustomersearch_icon_hover);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		xpath_GenericMethod_Click(xpath_mywork_icon_link);

	}

	public void clickOnMyWorkIconNA() throws Exception {
		try {
//			waitFor(3);
			xpath_GenericMethod_HoverOnDemoScreenPops(xpath_advancecustomersearch_icon_hover_NA);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		xpath_GenericMethod_Click(xpath_mywork_icon_link);
	}

	public void sendAdvanceSearchCustomerNumber(String customernumber) throws Exception {
		// waitFor(3);
		try {
//			waitFor(2);
			xpath_GenericMethod_Sendkeys(xpath_advancecustomername_textbox, "");
//			waitFor(1);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		xpath_GenericMethod_Sendkeys(xpath_advancecustomernumber_textbox, customernumber);

	}

	public void sendAdvanceSearchCustomerSearchDetails(String customernumber, String customername, String countrycode,
			String city, String postalcode, String street, String salesorganization, String distributionchannel,
			String divsion) throws Exception {

		xpath_GenericMethod_Sendkeys(xpath_advancecustomernumber_textbox, customernumber);
		xpath_GenericMethod_Sendkeys(xpath_advancecustomername_textbox, customername);
		xpath_GenericMethod_Sendkeys(xpath_advancecustomercountrycode_textbox, countrycode);
		xpath_GenericMethod_Sendkeys(xpath_advancecustomercity_textbox, city);
		xpath_GenericMethod_Sendkeys(xpath_advancecustomerpostalcode_textbox, postalcode);
		xpath_GenericMethod_Sendkeys(xpath_advancecustomerstreet_textbox, street);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_advancecustomersalesorganization_textbox, salesorganization);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_advancecustomerdistributionchannel_textbox, distributionchannel);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_advancecustomerdivision_textbox, customernumber);

	}

	public void clickOnAdvanceSearchButton() throws Exception {
		xpath_GenericMethod_Click(xpath_advancecustomersearch_button);
	}

	public void clickOnTwoDotsButton() throws Exception {
		driver.switchTo().defaultContent();
//		waitFor(2);
		driver.switchTo().frame("PegaGadget0Ifr");
//		waitFor(1);
		driver.findElement(By.xpath("(//*[contains(@id,'$PD_CustomerSearch')]/td[13])[1]")).click();
		// List<WebElement>
		// eles=driver.findElements(By.xpath("//*[contains(@id,'$PD_CustomerSearch')]/td[2]"));
		// System.out.println(eles.size());
		// eles.get(0).click();
//		waitFor(2);
		// xpath_GenericMethod_Click(xpath_advancetwodots_button);
		driver.switchTo().defaultContent();
	}

	public void clickOnAdvanceStartResearch() throws Exception {
//		waitFor(3);
		xpath_GenericMethod_Click(xpath_advancestartresearch_btn);

	}

	public void clickOnAdvanceCreateGenericCaseButton() throws Exception {

		xpath_GenericMethod_Click(xpath_advancecreategenericcase_btn);
//		waitFor(2);
	}

	public void selectTypeOneAndTypetwoValuesInCreateGenericCase(String typeone, String typetwo, String typethree) {
		try {
			xpath_GenericMethod_Click(xpath_casedesc_cgc_textbox);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
//		waitFor(3);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_type1_cgc_dd, typeone);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_type2_cgc_dd, typetwo);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_type3_cgc_dd, typethree);

	}

	public void selectUpdateStatusValueFromCGCDropdown(String statusvalue) throws Exception {
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_updatestatus_cgc_dd,
				statusvalue);
		xpath_GenericMethod_Sendkeys(xpath_remarksinupdatestatus_cgc_textbox, statusvalue);

	}

	public void verifyCFSAndCP(String cfs, String cp, String cfsflag, String cpflag) throws Exception {
		String actualcfs;
		String actualcp;
		try {
//			waitFor(2);
			actualcfs = xpath_Genericmethod_getFirstSelectedValueFromDropdown(xpath_cfs_dd);
			System.out.println("Actual CFS is :" + actualcfs);
//			waitFor(1);
		} catch (Exception e) {
			actualcfs = "";
		}

		try {
//			waitFor(2);
			actualcp = xpath_Genericmethod_getFirstSelectedValueFromDropdown(xpath_cp_dd);
			System.out.println("Actual CP is :" + actualcp + ".");
//			waitFor(1);
		} catch (Exception e) {
			actualcp = "";
		}
		/*
		 * if((cfs.equalsIgnoreCase(actualcfs))&&(cp.equalsIgnoreCase(actualcp))){
		 * System.out.println("Expected CFS :"+" "+cfs+"Actual CFS :"+" "+actualcfs+" "
		 * +"are same");
		 * System.out.println("Expected CP :"+" "+cp+"Actual CP :"+" "+actualcp+" "
		 * +"are same"); }else { System.out.println("CFS or CP data is invalid"); }
		 */
		if ((cfsflag.equalsIgnoreCase("Yes") && (cpflag.equalsIgnoreCase("Yes")))) {
			Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_no_cfs_assigned),
					"Element is present, but expected is element should not be present");
			Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_cfs_default_NotAvailable),
					"Element is present, but expected is element should not be present");
			Assert.assertEquals(actualcfs, cfs, "CFS data doesn't match");
			Assert.assertEquals(actualcp, cp, "CP data doesn't match");
			System.out.println("Data Matched for CFS & CP Flag :" + " " + cfsflag + " " + cpflag);
			Reporter.log("CFS Flag is: " + cfsflag + " " + "CP Flag is: " + cpflag);
			Reporter.log("Actual CFS is: " + actualcfs + " " + "Expected CFS is: " + cfs);
			Reporter.log("Actual CP is: " + actualcp + " " + "Expected CP is:: " + cp);
		} else if ((cfsflag.equalsIgnoreCase("Yes") && (cpflag.equalsIgnoreCase("No")))) {
			Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_no_cfs_assigned),
					"Element is present, but expected is element should not be present");
			Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_cfs_default_NotAvailable),
					"Element is present, but expected is element should not be present");
			Assert.assertEquals(actualcfs, cfs, "CFS data doesn't match");
			Assert.assertEquals(actualcp, cp, "CP data doesn't match");
			System.out.println("Data Matched for CFS & CP Flag :" + " " + cfsflag + " " + cpflag);
			Reporter.log("CFS Flag is: " + cfsflag + " " + "CP Flag is: " + cpflag);
			Reporter.log("Actual CFS is: " + actualcfs + " " + "Expected CFS is: " + cfs);
			Reporter.log("Actual CP is: " + actualcp + " " + "Expected CP is:: " + cp);
		} else if ((cfsflag.equalsIgnoreCase("No") && (cpflag.equalsIgnoreCase("Yes")))) {
			Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_no_cfs_assigned),
					"Element is present, but expected is element should not be present");
			Assert.assertTrue(xpath_Genericmethod_verifyElementPresent(xpath_cfs_default_NotAvailable),
					"Element is not present, but expected is element should be present");
			Assert.assertEquals(actualcfs, cfs, "CFS data doesn't match");
			Assert.assertEquals(actualcp, cp, "CP data doesn't match");
			System.out.println("Data Matched for CFS & CP Flag :" + " " + cfsflag + " " + cpflag);
			Reporter.log("CFS Flag is: " + cfsflag + " " + "CP Flag is: " + cpflag);
			Reporter.log("Actual CFS is: " + actualcfs + " " + "Expected CFS is: " + cfs);
			Reporter.log("Actual CP is: " + actualcp + " " + "Expected CP is:: " + cp);
		} else if ((cfsflag.equalsIgnoreCase("No") && (cpflag.equalsIgnoreCase("No")))) {
			Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_no_cfs_assigned),
					"Element is present, but expected is element should not be present");
			Assert.assertTrue(xpath_Genericmethod_verifyElementPresent(xpath_cfs_default_NotAvailable),
					"Element is not present, but expected is element should be present");
			Assert.assertEquals(actualcfs, cfs, "CFS data doesn't match");
			Assert.assertEquals(actualcp, cp, "CP data doesn't match");
			System.out.println("Data Matched for CFS & CP Flag :" + " " + cfsflag + " " + cpflag);
			Reporter.log("CFS Flag is: " + cfsflag + " " + "CP Flag is: " + cpflag);
			Reporter.log("Actual CFS is: " + actualcfs + " " + "Expected CFS is: " + cfs);
			Reporter.log("Actual CP is: " + actualcp + " " + "Expected CP is:: " + cp);
		} else {
			System.out.println("No CFS Assigned to this customer, so assigning organization default CFS");
			Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_cfs_default_NotAvailable),
					"Element is present, but expected is element should not be present");
			Assert.assertTrue(xpath_Genericmethod_verifyElementPresent(xpath_no_cfs_assigned),
					"Element is not present, but expected is element should be present");
			Assert.assertEquals(actualcfs, cfs, "CFS data doesn't match");
			Assert.assertEquals(actualcp, cp, "CP data doesn't match");
			System.out.println("Data Matched for CFS & CP Flag :" + " " + cfsflag + " " + cpflag);
			Reporter.log("CFS Flag is: " + cfsflag + " " + "CP Flag is: " + cpflag);
			Reporter.log("Actual CFS is: " + actualcfs + " " + "Expected CFS is: " + cfs);
			Reporter.log("Actual CP is: " + actualcp + " " + "Expected CP is:: " + cp);
		}

	}

	public void verifyCFSAndCP(String cfs, String cp) throws Exception {
		String actualcfs;
		String actualcp;
		try {
//			waitFor(2);
			actualcfs = xpath_Genericmethod_getFirstSelectedValueFromDropdown(xpath_cfs_dd);
			System.out.println("Actual CFS is :" + actualcfs);
//			waitFor(1);
		} catch (Exception e) {
			actualcfs = "";
		}

		try {
//			waitFor(2);
			actualcp = xpath_Genericmethod_getFirstSelectedValueFromDropdown(xpath_cp_dd);
			System.out.println("Actual CP is :" + actualcp + ".");
//			waitFor(1);
		} catch (Exception e) {
			actualcp = "";
		}

		if ((cfs.equalsIgnoreCase(actualcfs)) && (cp.equalsIgnoreCase(actualcp))) {
			System.out.println("Expected CFS :" + " " + cfs + "Actual CFS :" + " " + actualcfs + " " + "are same");
			Reporter.log("Expected CFS :" + " " + cfs + "Actual CFS :" + " " + actualcfs + " " + "are same");
			System.out.println("Expected CP :" + " " + cp + "Actual CP :" + " " + actualcp + " " + "are same");
			Reporter.log("Expected CP :" + " " + cp + " " + "Actual CP :" + " " + actualcp + " " + "are same");
		} else {
			System.out.println("CFS or CP data is invalid");
			Reporter.log("CFS or CP data is invalid");
		}

	}

	public void verifyUpdatedEmailDestinationFieldInGeneralTab(String expectedemaildestination) throws Exception {
//		waitFor(2);
		System.out.println("In Verify Email Destination Method");
		String actualemaildestinationvalue = xpath_Genericmethod_getElementText(xpath_emaildestination);
		Reporter.log("Actual Email Destination Field Value is: " + actualemaildestinationvalue);
		boolean emaildestinationstatus = xpath_Genericmethod_VerifyTextEquals(xpath_emaildestination,
				expectedemaildestination);
		Assert.assertTrue(emaildestinationstatus, "Status of the case is not equal");
	}

	public void verifyUpdatedCaseStatus(String expectedupdatedcasestatus) throws Exception {
		/*
		 * try { xpath_GenericMethod_Click(xpath_casedesc_cgc_textbox); }catch(Exception
		 * e) { System.out.println(e.getMessage()); } waitFor(2);
		 */
		waitFor(3);
		String updatedstatusxpath = "//a[text()='  " + expectedupdatedcasestatus + "  ']";
		System.out.println(updatedstatusxpath + " " + expectedupdatedcasestatus);
		boolean casestatus = xpath_Genericmethod_VerifyTextEquals(updatedstatusxpath, expectedupdatedcasestatus);
		Assert.assertTrue(casestatus, "Status of the case is not equal");
	}

	public void verifyTheEditButtonStatus() throws Exception {
		// WebElement element = driver.findElement(By.xpath(xpath_edit_btn));
		boolean b = SeleniumFunc.xpath_GenericMethod_IsEnabled(xpath_edit_btn);
		System.out.println("Element enabled is :" + b);
		Reporter.log("Element enabled is :" + b);
		Assert.assertEquals(b, false, "Actual and Expected are not same");
	}

	public void verifyCaseStatusRemarks(String expectedcasestatusremarks) throws Exception {
		try {
			xpath_GenericMethod_getText_TableResultsRow(expectedcasestatusremarks, startxpath_casestatusremarks_table,
					endxpath_casestatusremarks_table, 2);
		} catch (Exception e) {
			System.out.println("No such element");
			Reporter.log("Verify Case  Status Remarks step issue");
		}
	}

	public void clickOnCaseChangeLogTab() throws Exception {
		// try {
		// xpath_GenericMethod_Click(xpath_changecaselog_tab);
		// } catch (Exception e) {
		// xpath_GenericMethod_Click(xpath_changecaselog_tab);
		// }

		driver.navigate().refresh();
		xpath_GenericMethod_Click(xpath_changecaselog_tab);
	}

	public void verifyCaseStatusAndCaseResponsible(String expectedstatus_oldvalue, String expectedstatus_newvalue,
			String expectedcaseresponsible_oldvalue, String expectedcaseresponsible_newvalue,
			String actiontypeworkstatus, String actiontypecaseresponsible) {

		// driver.switchTo().defaultContent();
//		waitFor(1);
		Reporter.log("In VerifyCaseStatusAndCaseResponsible");
		// driver.switchTo().frame("PegaGadget1Ifr");
//		waitFor(1);
		Reporter.log(expectedstatus_newvalue);
		/*
		 * try { int caseresponsible_count = 0; int casestatus_count = 0; for (int i =
		 * 2; i <= 5; i++) { if (caseresponsible_count >= 1 && casestatus_count >= 1) {
		 * break; } Reporter.log("In Verify Case Status and Responsible"); //
		 * waitFor(2); String actualtext =
		 * driver.findElement(By.xpath(xpathstart_caselog + i +
		 * xpathend_caselog)).getText(); Reporter.log("Actual text is: " + actualtext);
		 * 
		 * try { if (actualtext.contains(actiontypecaseresponsible)) {
		 * caseresponsible_count = caseresponsible_count + 1;
		 * 
		 * Reporter.log("In IF condition of Verify Case Responsible"); for (int j = 4; j
		 * <= 5; j++) { if (j == 4) { String case_Responsible_actual_oldvalue = driver
		 * .findElement(By.xpath( caselog_xpathstart + i + caselog_xpathmid + j +
		 * caselog_xpathend)) .getText(); Reporter.log("Actual old value is: " +
		 * case_Responsible_actual_oldvalue + " " + "Expected old value is: " +
		 * expectedcaseresponsible_oldvalue);
		 * Assert.assertTrue(case_Responsible_actual_oldvalue
		 * .equalsIgnoreCase(expectedcaseresponsible_oldvalue)); } else if (j == 5) {
		 * String case_Responsible_actual_newvalue = driver .findElement(By.xpath(
		 * caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
		 * .getText(); Reporter.log("Actual new value is: " +
		 * case_Responsible_actual_newvalue + " " + "Expected new value is: " +
		 * expectedcaseresponsible_newvalue);
		 * Assert.assertTrue(case_Responsible_actual_newvalue
		 * .equalsIgnoreCase(expectedcaseresponsible_newvalue)); } }
		 * 
		 * } else if (actualtext.contains(actiontypeworkstatus)) { casestatus_count =
		 * casestatus_count + 1; Reporter.log("In IF condition of Verify Case Status");
		 * for (int j = 4; j <= 5; j++) { if (j == 4) { String
		 * case_status_actual_oldvalue = driver .findElement(By.xpath(
		 * caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
		 * .getText(); Reporter.log("Actual old value is: " +
		 * case_status_actual_oldvalue + " " + "Expected old value is: " +
		 * expectedstatus_oldvalue); Assert.assertTrue(
		 * case_status_actual_oldvalue.equalsIgnoreCase(expectedstatus_oldvalue)); }
		 * else if (j == 5) { String case_status_actual_newvalue = driver
		 * .findElement(By.xpath( caselog_xpathstart + i + caselog_xpathmid + j +
		 * caselog_xpathend)) .getText(); Reporter.log("Actual new value is: " +
		 * case_status_actual_newvalue + " " + "Expected new value is: " +
		 * expectedstatus_newvalue); Assert.assertTrue(
		 * case_status_actual_newvalue.equalsIgnoreCase(expectedstatus_newvalue)); } } }
		 * else { Reporter.log("No matching data found"); } } catch (Exception e) {
		 * 
		 * System.out.println("No such element" + e.getMessage()); }
		 * 
		 * } } catch (Exception e) { System.out.println(e.getMessage()); }
		 */
		// driver.switchTo().defaultContent();
		try {
			if ((expectedstatus_newvalue.equalsIgnoreCase("Pending-InProgress"))
					|| (expectedstatus_newvalue.equalsIgnoreCase("Pending-Response"))
					|| (expectedstatus_newvalue.equalsIgnoreCase("New"))) {
				Reporter.log(
						"In Pending-InProgress,New and Pending-Response Method of verify Case Status and Responsible");
				try {
					int caseresponsible_count = 0;
					int casestatus_count = 0;
					for (int i = 2; i <= 5; i++) {
						if (caseresponsible_count >= 1 && casestatus_count >= 1) {
							break;
						}
						Reporter.log("In Verify Case Status and Responsible"); // waitFor(2);
						String actualtext = driver.findElement(By.xpath(xpathstart_caselog + i + xpathend_caselog))
								.getText();
						Reporter.log("Actual text is: " + actualtext);

						try {
							if (actualtext.contains(actiontypecaseresponsible)) {
								caseresponsible_count = caseresponsible_count + 1;

								Reporter.log("In IF condition of Verify Case Responsible");
								for (int j = 4; j <= 5; j++) {
									if (j == 4) {
										String case_Responsible_actual_oldvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual old value is: " + case_Responsible_actual_oldvalue + " "
												+ "Expected old value is: " + expectedcaseresponsible_oldvalue);
										Assert.assertTrue(case_Responsible_actual_oldvalue
												.equalsIgnoreCase(expectedcaseresponsible_oldvalue));
									} else if (j == 5) {
										String case_Responsible_actual_newvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual new value is: " + case_Responsible_actual_newvalue + " "
												+ "Expected new value is: " + expectedcaseresponsible_newvalue);
										Assert.assertTrue(case_Responsible_actual_newvalue
												.equalsIgnoreCase(expectedcaseresponsible_newvalue));
									}
								}

							} else if (actualtext.contains(actiontypeworkstatus)) {
								casestatus_count = casestatus_count + 1;
								Reporter.log("In IF condition of Verify Case Status");
								for (int j = 4; j <= 5; j++) {
									if (j == 4) {
										String case_status_actual_oldvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual old value is: " + case_status_actual_oldvalue + " "
												+ "Expected old value is: " + expectedstatus_oldvalue);
										Assert.assertTrue(
												case_status_actual_oldvalue.equalsIgnoreCase(expectedstatus_oldvalue));
									} else if (j == 5) {
										String case_status_actual_newvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual new value is: " + case_status_actual_newvalue + " "
												+ "Expected new value is: " + expectedstatus_newvalue);
										Assert.assertTrue(
												case_status_actual_newvalue.equalsIgnoreCase(expectedstatus_newvalue));
									}
								}
							} else {
								Reporter.log("No matching data found");
							}
						} catch (Exception e) {

							System.out.println("No such element" + e.getMessage());
						}

					}
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
				// driver.switchTo().defaultContent();
			} else if ((expectedstatus_newvalue.equalsIgnoreCase("Resolved-Completed"))
					|| (expectedstatus_newvalue.equalsIgnoreCase("Resolved-Withdrawn"))) {
				Reporter.log(
						"In Resolved-Completed and Resolved-Withdrawn Method of verify Case Status and Responsible");
				try {
					int caseresponsible_count = 0;
					int casestatus_count = 0;
					for (int i = 2; i <= 5; i++) {
						if ((caseresponsible_count >= 1 && casestatus_count >= 1) || caseresponsible_count >= 1
								|| casestatus_count >= 1) {
							break;
						}
						Reporter.log("In Verify Case Status and Responsible"); // waitFor(2);
						String actualtext = driver.findElement(By.xpath(xpathstart_caselog + i + xpathend_caselog))
								.getText();
						Reporter.log("Actual text is: " + actualtext);

						try {
							if (actualtext.contains(actiontypecaseresponsible)) {
								caseresponsible_count = caseresponsible_count + 1;

								Reporter.log("In IF condition of Verify Case Responsible");
								for (int j = 4; j <= 5; j++) {
									if (j == 4) {
										String case_Responsible_actual_oldvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual old value is: " + case_Responsible_actual_oldvalue + " "
												+ "Expected old value is: " + expectedcaseresponsible_oldvalue);
										Assert.assertTrue(case_Responsible_actual_oldvalue
												.equalsIgnoreCase(expectedcaseresponsible_oldvalue));
									} else if (j == 5) {
										String case_Responsible_actual_newvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual new value is: " + case_Responsible_actual_newvalue + " "
												+ "Expected new value is: " + expectedcaseresponsible_newvalue);
										Assert.assertTrue(case_Responsible_actual_newvalue
												.equalsIgnoreCase(expectedcaseresponsible_newvalue));
									}
								}

							} else if (actualtext.contains(actiontypeworkstatus)) {
								casestatus_count = casestatus_count + 1;
								Reporter.log("In IF condition of Verify Case Status");
								for (int j = 4; j <= 5; j++) {
									if (j == 4) {
										String case_status_actual_oldvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual old value is: " + case_status_actual_oldvalue + " "
												+ "Expected old value is: " + expectedstatus_oldvalue);
										Assert.assertTrue(
												case_status_actual_oldvalue.equalsIgnoreCase(expectedstatus_oldvalue));
									} else if (j == 5) {
										String case_status_actual_newvalue = driver.findElement(By.xpath(
												caselog_xpathstart + i + caselog_xpathmid + j + caselog_xpathend))
												.getText();
										Reporter.log("Actual new value is: " + case_status_actual_newvalue + " "
												+ "Expected new value is: " + expectedstatus_newvalue);
										Assert.assertTrue(
												case_status_actual_newvalue.equalsIgnoreCase(expectedstatus_newvalue));
									}
								}
							} else {
								Reporter.log("No matching data found");
							}
						} catch (Exception e) {

							System.out.println("No such element" + e.getMessage());
						}

					}
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
			}
		} catch (Exception e) {
			System.out.println("No element found in Verify Case Status and Responsible method");
		}

	}

	public void clickOnsendMailLink() throws Exception {

		xpath_GenericMethod_Click(xpath_sendmail_link);
	}

	public void clickOnContactPersonBtn() throws Exception {
		xpath_GenericMethod_Click(xpath_selectcp_btn);
	}

	public void clickOnContactPersonChkbox() throws Exception {
		Assert.assertTrue(xpath_Genericmethod_verifyElementPresent(xpath_selectcp_chkbox),
				"Element checkbox for CP is not present");
		xpath_GenericMethod_Click(xpath_selectcp_chkbox);
	}

	public void clickOnContactPersonSubmitBtn() throws Exception {
		xpath_GenericMethod_Click(xpath_cp_submit_btn);
	}

	public void clickOnPurposeOfEmailBtn(String purposeofemail) throws Exception {
		if (purposeofemail.equalsIgnoreCase("Information Only")) {
			xpath_GenericMethod_Click("//label[contains(@for,'" + purposeofemail + "')]");
		} else if (purposeofemail.equalsIgnoreCase("Pending Response")) {
			xpath_GenericMethod_Click("//label[contains(@for,'" + purposeofemail + "')]");
		} else {
			System.out.println("No purpose of email is present");
		}
	}

	public void verifyEmailDestinationDropdownValues(String EDvalue1, String EDvalue2, String EDvalue3)
			throws Exception {
		waitFor(1);
		List<String> EmailDestinationDDvalues = SeleniumFunc.xpath_Genericmethod_getAllDropDownValues(xpath_email_destination_dd);
		System.out.println("Email Destination Values are: " + EmailDestinationDDvalues);
		Reporter.log("Email Destination Values are: " + EmailDestinationDDvalues);

		Assert.assertEquals(EmailDestinationDDvalues.get(1), EDvalue1,
				"Actual Value: " + EmailDestinationDDvalues.get(1) + "Expected value: " + EDvalue1 + "Are not Same");
		Assert.assertEquals(EmailDestinationDDvalues.get(2), EDvalue2,
				"Actual Value: " + EmailDestinationDDvalues.get(2) + "Expected value: " + EDvalue2 + "Are not Same");
		Assert.assertEquals(EmailDestinationDDvalues.get(3), EDvalue3,
				"Actual Value: " + EmailDestinationDDvalues.get(3) + "Expected value: " + EDvalue3 + "Are not Same");

	}

	public void selectEmailDestination(String emaildestination) throws Exception {
//		if (xpath_Genericmethod_verifyElementPresent(xpath_email_destination_dd)) {
			xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_email_destination_dd,
					emaildestination);
//		} else {
			System.out.println("No Email Destination Field is available");
//		}
	}

	public void clickOnSendEmailBtn() throws Exception {
		xpath_GenericMethod_Click(xpath_sendemail_btn);
	}

	public void clickOnThreeDotsInSearchCaseId() throws Exception {
		xpath_GenericMethod_Click(xpath_caseidsearch_threedots_btn);
	}

	public void closeCaseIdTab() throws Exception {
		try {
			xpath_GenericMethod_Click(xpath_caseidsearch_closetab);
		} catch (Exception e) {
			System.out.println("No close Tab Element Found");
		}
	}

	public void clickOnEmailInformationTab() throws Exception {
		try {
			xpath_GenericMethod_Click(xpath_caseidsearch_emailinformationtab);
		} catch (Exception e) {
			xpath_GenericMethod_Click(xpath_caseidsearch_emailinformationtab);
		}
	}

	public void verifyEmailSubjectForRE(String caseid) throws Exception {
		// if (xpath_Genericmethod_verifyElementPresent(xpath_replymail_subject)) {
		Assert.assertTrue(xpath_Genericmethod_verifyElementPresent(xpath_replymail_subject),
				"Reply Mail attachment is not available for :" + caseid);
		// } else {
		// Assert.assertFalse(xpath_Genericmethod_verifyElementPresent(xpath_replymail_subject),
		// "Reply Mail attachment is available for :" + caseid);
		// }
	}

	public void verifyCaseCanNotCreate(String message) throws Exception {
		Assert.assertTrue(xpath_Genericmethod_VerifyTextEquals(xpath_casecannotcreate, message),
				"Case Not created element is not present");
	}

	public void clickOnAssignToButton() throws Exception {
		xpath_GenericMethod_Click(xpath_assignto_btn);
	}

	public void verifyTheAssignToOptions(String assigntocfs, String assigntowb, String assingtonewassignee,
			String assigntopreviousassignee) throws Exception {

		String assign_to_cfs_value = "//span[text()='" + assigntocfs + "']";
		boolean c = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(assign_to_cfs_value);
		Reporter.log("Assign To CFS element present is: " + c);
		System.out.println("Assign To CFS element present is: " + c);
		Assert.assertTrue(c, "Element " + assign_to_cfs_value + " is not present ");

		String assign_to_wb_value = "//span[text()='" + assigntowb + "']";
		boolean d = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(assign_to_wb_value);
		Reporter.log("Assign To WorkBasket element present is: " + d);
		System.out.println("Assign To WorkBasket element present is: " + d);
		Assert.assertTrue(d, "Element " + assign_to_wb_value + " is not present ");

		String assign_to_new_assign_value = "//span[text()='" + assingtonewassignee + "']";
		boolean e = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(assign_to_new_assign_value);
		Reporter.log("Assign To New Assignee & WB element present is: " + e);
		System.out.println("Assign To New Assignee & WB element present is: " + e);
		Assert.assertTrue(e, "Element " + assign_to_new_assign_value + " is not present ");

		String assign_to_previous_assignee_value = "//span[text()='" + assigntopreviousassignee + "']";
		boolean f = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(assign_to_previous_assignee_value);
		Reporter.log("Assign To Previous Assignee element present is: " + f);
		System.out.println("Assign To Previous Assignee element present is: " + f);
		Assert.assertTrue(f, "Element " + assign_to_previous_assignee_value + " is not present ");

	}

	public void verifyTheAssignToOptionsInitial(String assigntocfs, String assigntowb, String assingtonewassignee)
			throws Exception {
		String assign_to_cfs_value = "//span[text()='" + assigntocfs + "']";
		boolean c = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(assign_to_cfs_value);
		Reporter.log("Assign To CFS element present is: " + c);
		System.out.println("Assign To CFS element present is: " + c);
		Assert.assertTrue(c, "Element " + assign_to_cfs_value + " is not present ");

		String assign_to_wb_value = "//span[text()='" + assigntowb + "']";
		boolean d = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(assign_to_wb_value);
		Reporter.log("Assign To WorkBasket element present is: " + d);
		System.out.println("Assign To WorkBasket element present is: " + d);
		Assert.assertTrue(d, "Element " + assign_to_wb_value + " is not present ");

		String assign_to_new_assign_value = "//span[text()='" + assingtonewassignee + "']";
		boolean e = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(assign_to_new_assign_value);
		Reporter.log("Assign To New Assignee & WB element present is: " + e);
		System.out.println("Assign To New Assignee & WB element present is: " + e);
		Assert.assertTrue(e, "Element " + assign_to_new_assign_value + " is not present ");
	}

	public void clickOnAssignToCFSButton() throws Exception {
		xpath_GenericMethod_Click(xpath_assign_to_cfs_link);
	}

	public void clickOnCaseIdLinkInMyCasesTab() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
//		waitFor(2);
		for (int i = 1; i <= 20; i++) {
			xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_MyWL_caseid, xpathend_MyWL_caseid, i);
			break;
		}
//		waitFor(2);
	}

	public void clickOnAssignToPreviousAssigneeButton() throws Exception {
		xpath_GenericMethod_Click(xpath_assign_to_previousassignee_link);
	}

	public void clickOnAssignToNewAssigneeButton() throws Exception {
		xpath_GenericMethod_Click(xpath_assign_to_newassignee_link);
	}

	public void closeBrowser() {
		driver.close();
//		waitFor(2);
	}

	public void selectPreviousAssigneeFromDropdown() throws Exception {
		// xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_previousassigneelist_dd,
		// previousassignee);
		// waitFor(2);
		xpath_GenericMethod_Click(xpath_previousassignee_submit_btn);
	}

	public void selectnewAssigneeFromDropdown(String newassignee, String assigntotype) throws Exception {
//		waitFor(2);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_assigntotype_dd, assigntotype);
//		waitFor(2);
		xpath_GenericMethod_Sendkeys(xpath_newsassigneelist_dd, newassignee);
		xpath_GenericMethod_Key_SendKeys(xpath_newsassigneelist_dd,Keys.TAB);
		xpath_GenericMethod_Click(xpath_previousassignee_submit_btn);

	}

	public void selectnewAssigneeFromDropdownNA(String newassignee) throws Exception {
//		waitFor(2);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_assigntotype_dd,
				assigntotypevalue);
//		waitFor(2);
		xpath_GenericMethod_Sendkeys(xpath_newsassigneelist_dd, newassignee);

		xpath_GenericMethod_Click(xpath_previousassignee_submit_btn);

	}

	public void clickOnCloseTab() throws Exception {
		xpath_GenericMethod_Click(xpath_down_arrow);
		xpath_GenericMethod_Click(xpath_close_all);

	}

	public void clickOnAssignToWBLink() throws Exception {
		xpath_GenericMethod_Click(xpath_assign_to_workbasket_link);
	}

	public void clickOnWBTab() throws Exception {
//		waitFor(2);
		xpath_GenericMethod_Click(xpath_workbasket_header);
	}

	public void clickOnViewQueueForDropdown(String workbasketname) throws Exception {
//		waitFor(2);
		Reporter.log("WorkBasket name is: " + workbasketname);
//		waitFor(2);
		xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(xpath_viewqueuefor_dd,
				workbasketname);
	}

	public void clickOnCaseIdLinkInMyWB_ViewQueueForResultsTab() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		for (int i = 1; i <= 20; i++) {
			xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_MyWB_caseid, xpathend_MyWB_caseid, i);
			break;
		}
	}

	public void clickOnCaseIDFromFollowedCases() throws Exception {
		String stored_caseid = getCaseIdPreference();
		System.out.println("Stored Case id is: " + stored_caseid);
		xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_MyFollowed_caseid, xpathend_MyFollowed_caseid,
				2);
		// xpath_GenericMethod_ClickWBResultsRow(stored_caseid, xpathstart_mywb_caseid,
		// xpathend_mywb_caseid,
		// 2);
		// xpath_GenericMethod_ClickWBResultsRow(stored_caseid,
		// xpathstart_mycases_caseid, xpathend_mycases_caseid,
		// 2);
		// xpath_GenericMethod_ClickWBResultsRow(stored_caseid,
		// xpathstart_namycases_caseid, xpathend_namycases_caseid,
		// 2);
	}

	public void clickOnCaseStatusRemarksTab() throws Exception {
		xpath_GenericMethod_Click(xpath_casestatusremarks_tab);
	}

	public void clickOnAdvanceSearch() throws Exception {
		SeleniumFunc.xpath_GenericMethod_HoverOnDemoScreenPops(xpath_AdvanceSearch_Hover);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_Advancesearch_link);
		Thread.sleep(2000);
	}

	public void enterSalesOrganization(String SalesOrg) throws Exception {
		SeleniumFunc.xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_Advancesearch_SalesOrganization, SalesOrg);
	}

	public void clickOnSearchButton() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_Advancesearch_searchbutton);
	}

	public void clickOnExportToExcel() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_AdvanceSearch_exporttoexcelbutton);
	}

	public void clickOnClearButton() throws Exception {
		SeleniumFunc.xpath_GenericMethod_Click(xpath_AdvanceSearch_clearbutton);
	}

	public void enterTypologiesInAdvanceSearch(String type1, String type2, String type3) throws Exception {
//		waitFor(2);
		SeleniumFunc.xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_type1_advancesearch, type1);
		SeleniumFunc.xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_type2_advancesearch, type2);
		SeleniumFunc.xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_type3_advancesearch, type3);
	}

	public void selectCaseTypeCurrentCaseStatus(String casetype, String currentcasestatus) throws Exception {
		SeleniumFunc.xpath_GenericMethod_selectFromDropdownUsingVisibleTextbyclickingOnDropdown(
				xpath_genericase_advancesearch, casetype);
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_currentcasestatus_advancesearch, currentcasestatus);
	}

	public void enterSalesOrderNumberAdvanceSearch(String SalesOrderNumber) throws Exception {
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_salesordernumber_advancesearch, SalesOrderNumber);
	}

	public void enterCaseResponsible(String currentcaseresponsible) throws Exception {
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_currentcaseresponsible_advancesearch, currentcaseresponsible);
	}

	public void enterCaseCreator(String casecreator) throws Exception {
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_casecreator_advancesearch, casecreator);
	}

	public void enterCaseNumber(String casenumber) throws Exception {
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_casenumber_advancesearch, casenumber);
	}

}
