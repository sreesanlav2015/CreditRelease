package com.cucumber.framework.PageObjects;

import java.io.IOException;
import java.util.Random;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;
import org.testng.Reporter;

import com.cucumber.framework.CS.CustomerServ;
import com.cucumber.framework.GeneralHelperSel.SeleniumFunc;
import com.cucumber.framework.TestBase.TestBase;
import com.cucumber.framework.configreader.ObjectRepo;
import com.cucumber.framework.helper.Logger.LoggerHelper;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class PegaBot extends CustomerServ implements PegaBotPageLoc {

	private final Logger log = LoggerHelper.getLogger(PegaBot.class);
	PegaBot pegabot;
	LoginPage loginpage;

	String son = "";
	String caseid = "";
	String Customerriskcategory = "";
	String CreditLimit = "";
	String CreditLimitUsage = "";
	String NextDate = "";
	String PastDue = "";
	String WeightAvgDays = "";
	String Creditlimitusage_TR = "";
	String BOTStatus="";

	public PegaBot(WebDriver driver) {
		super(driver);
	}

	public void sendPegaBotPageObject(PegaBot pegabot) {
		this.pegabot = pegabot;
	}

	public void putRequestSalesOrderNumber(String Salesorg, String Customerriskcategory, String Customernumber,
			String Customernumbershipto, String Customernumberpayer, String Divison, String Distributionchannel,
			String Currency) throws IOException {
		Random rd = new Random();
		int rdnum;
		String m[] = new String[10];
		for (int i = 0; i < 10; i++) {
			rdnum = rd.nextInt(10);
			m[i] = Integer.toString(rdnum);
		}
		System.out.println(
				"Sales Order Number is: " + m[0] + m[1] + m[2] + m[3] + m[4] + m[5] + m[6] + m[7] + m[8] + m[9]);
		son = m[0] + m[1] + m[2] + m[3] + m[4] + m[5] + m[6] + m[7] + m[8] + m[9];
		System.out.println("SON Value is: " + son);

		OkHttpClient client = new OkHttpClient().newBuilder().build();
		MediaType mediaType = MediaType.parse("application/json");
		RequestBody body = RequestBody.create(mediaType,
				"{\r\n\t\"ECCDATA\": {\r\n\t\t\"PARAMETERS\": \"\",\r\n\t\t\"CUSTOMER\": [\r\n\t\t\t{\r\n\t\t\t\t\"KUNNR\": \""
						+ Customernumber
						+ "\",\r\n\t\t\t\t\"CITY1\": \"ORLANDO\",\r\n\t\t\t\t\"REGION\": \"FL\",\r\n\t\t\t\t\"PSTLZ\": \"32809\"\r\n\t\t\t}\r\n\t\t],\r\n\t\t\"MATERIAL\": [\r\n\t\t\t{\r\n\t\t\t\t\"MATNR\": \"000000000067218389\",\r\n\t\t\t\t\"MEINS\": \"CS\",\r\n\t\t\t\t\"MEINH\": \"CS\",\r\n\t\t\t\t\"UMREZ\": \"1\",\r\n\t\t\t\t\"UMREN\": \"1\"\r\n\t\t\t}\r\n\t\t\t\r\n\t\t],\r\n\t\t\"ORDER\": [\r\n\t\t\t{\r\n\t\t\t\t\"ORDERLINE\": [\r\n\t\t\t\t\t{\r\n\t\t\t\t\t\t\"POSNR\": \"000010\",\r\n\t\t\t\t\t\t\"MATNR\": \"000010732913228031\",\r\n\t\t\t\t\t\t\"EDATU\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\t\t\"SDABW\": \"\",\r\n\t\t\t\t\t\t\"PSTYV\": \"ZUCC\",\r\n\t\t\t\t\t\t\"KDMAT\": \"123445689\",\r\n\t\t\t\t\t\t\"NETWR\": \"618.80\",\r\n\t\t\t\t\t\t\"WERKS\": \"3512\",\r\n\t\t\t\t\t\t\"LPRIO\": \"35\",\r\n\t\t\t\t\t\t\"KZTLF\": \"\",\r\n\t\t\t\t\t\t\"WADAT\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\t\t\"LDDAT\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\t\t\"EZEIT\": \"2999-01-01T00:00:00\",\r\n\t\t\t\t\t\t\"ZEZEITOLD\": \"2999-01-01T00:00:00\",\r\n\t\t\t\t\t\t\"LTL_WEIGHT\": \"0.0\",\r\n\t\t\t\t\t\t\"LTL_LEAD\": \"000000\",\r\n\t\t\t\t\t\t\"LEAD_DAYS\": \"000000\",\r\n\t\t\t\t\t\t\"VSTEL\": \"USC2\",\r\n\t\t\t\t\t\t\"LGORT\": \"1000\",\r\n\t\t\t\t\t\t\"ROUTE\": \"T00100\",\r\n\t\t\t\t\t\t\"EAN11\": \"10732913228031\",\r\n\t\t\t\t\t\t\"MVGR1\": \"\",\r\n\t\t\t\t\t\t\"MVGR2\": \"\",\r\n\t\t\t\t\t\t\"MVGR3\": \"\",\r\n\t\t\t\t\t\t\"MVGR5\": \"\",\r\n\t\t\t\t\t\t\"TDDAT\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\t\t\"ABGRU\": \"\",\r\n\t\t\t\t\t\t\"KWMENG\": \"10.000\",\r\n\t\t\t\t\t\t\"VRKME\": \"CS\",\r\n\t\t\t\t\t\t\"PRODH\": \"\",\r\n\t\t\t\t\t\t\"KONDM\": \"\",\r\n\t\t\t\t\t\t\"UEPOS\": \"000000\",\r\n\t\t\t\t\t\t\"POSEX\": \"\",\r\n\t\t\t\t\t\t\"LIFSP\": \"\",\r\n\t\t\t\t\t\t\"TDLINE1\": \"\",\r\n\t\t\t\t\t\t\"TDLINE2\": \"\",\r\n\t\t\t\t\t\t\"ZCOMPITEM\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI1\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI2\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI3\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI4\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI5\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI6\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI7\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI8\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI9\": \"\",\r\n\t\t\t\t\t\t\"ZTEMPI10\": \"\",\r\n\t\t\t\t\t\t\"MSTDV\": \"0000-00-00\",\r\n\t\t\t\t\t\t\"ZZTOTLWT\": \"0.0\",\r\n\t\t\t\t\t\t\"ZZLVOL\": \"0.0\",\r\n\t\t\t\t\t\t\"ARKTX\": \"1VG DET 2X CON Free + Clear 4p 150z Test\"\r\n\t\t\t\t\t}\r\n\t\t\t\t],\r\n\t\t\t\t\"VBELN\": \""
						+ son
						+ "\",\r\n\t\t\t\t\"PRSDT\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\"BSTKD\": \"Test-Credit process\",\r\n\t\t\t\t\"BSTDK\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\"BSTNK\": \"134534524\",\r\n\t\t\t\t\"BSARK\": \"MAN\",\r\n\t\t\t\t\"VKORG\": \""
						+ Salesorg + "\",\r\n\t\t\t\t\"VTWEG\": \"" + Distributionchannel
						+ "\",\r\n\t\t\t\t\"SPART\": \"" + Divison
						+ "\",\r\n\t\t\t\t\"ERDAT\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\"AUART\": \"ZOR\",\r\n\t\t\t\t\"ERZET\": \"2999-01-01T11:48:30\",\r\n\t\t\t\t\"ERNAM\": \"GANAPAT_A001\",\r\n\t\t\t\t\"LIFSK\": \"\",\r\n\t\t\t\t\"FAKSK\": \"\",\r\n\t\t\t\t\"NETWR\": \"2946.38\",\r\n\t\t\t\t\"KNKLI\": \"34534434\",\r\n\t\t\t\t\"ZSUBDIVISION\": \"\",\r\n\t\t\t\t\"KUNNRPY\": \""
						+ Customernumberpayer + "\",\r\n\t\t\t\t\"KUNNRSP\": \"" + Customernumbershipto
						+ "\",\r\n\t\t\t\t\"SDABW\": \"\",\r\n\t\t\t\t\"AUDAT\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\"ZZVSBED\": \"\",\r\n\t\t\t\t\"ZZEIKTO\": \"22101\",\r\n\t\t\t\t\"ZZVBELN\": \"\",\r\n\t\t\t\t\"ZZDTDESFAT\": \"9999-12-31T00:00:00\",\r\n\t\t\t\t\"ZZEDELDT\": \"9999-12-31T00:00:00\",\r\n\t\t\t\t\"ZZLDELDT\": \"9999-12-31T00:00:00\",\r\n\t\t\t\t\"ZZWEIGHT\": \"604.976\",\r\n\t\t\t\t\"ZZVOLUM\": \"36.351\",\r\n\t\t\t\t\"ZZORGWEIGHT\": \"604.976\",\r\n\t\t\t\t\"ZZORGVOLUME\": \"36.351\",\r\n\t\t\t\t\"BOLTEXT\": \"Walgreens Receiving DC 407.856.8607\",\r\n\t\t\t\t\"KUNNRSH\": \"4123423442\",\r\n\t\t\t\t\"KUNNR1\": \"0030037127\",\r\n\t\t\t\t\"KUNNR2\": \"0030037129\",\r\n\t\t\t\t\"KUNNR3\": \"0030037128\",\r\n\t\t\t\t\"KUNNR4\": \"0030037131\",\r\n\t\t\t\t\"KUNNR5\": \"0030037126\",\r\n\t\t\t\t\"KUNNR6\": \"0030037125\",\r\n\t\t\t\t\"KUNNR7\": \"0030026654\",\r\n\t\t\t\t\"VDATU\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\"ZZORVDATU\": \"2020-03-30T00:00:00\",\r\n\t\t\t\t\"VSBED\": \"19\",\r\n\t\t\t\t\"AUGRU\": \"\",\r\n\t\t\t\t\"KONDA\": \"N1\",\r\n\t\t\t\t\"ZTERM\": \"1617\",\r\n\t\t\t\t\"LFSTK\": \"A\",\r\n\t\t\t\t\"FKSTK\": \"\",\r\n\t\t\t\t\"CMGST\": \"B\",\r\n\t\t\t\t\"VKGRP\": \"27\",\r\n\t\t\t\t\"VKBUR\": \"2\",\r\n\t\t\t\t\"INCO1\": \"DAP\",\r\n\t\t\t\t\"INCO2\": \"TBD\",\r\n\t\t\t\t\"CTLPC\": \""
						+ Customerriskcategory + "\",\r\n\t\t\t\t\"WAERK\": \"" + Currency
						+ "\",\r\n\t\t\t\t\"BSTZD\": \"\",\r\n\t\t\t\t\"IHREZ\": \"\",\r\n\t\t\t\t\"TDLINE1\": \"\",\r\n\t\t\t\t\"TDLINE2\": \"\",\r\n\t\t\t\t\"ZCOMPHEADER\": \"\",\r\n\t\t\t\t\"ZTEMPH1\": \"\",\r\n\t\t\t\t\"ZTEMPH2\": \"\",\r\n\t\t\t\t\"ZTEMPH3\": \"\",\r\n\t\t\t\t\"ZTEMPH4\": \"\",\r\n\t\t\t\t\"ZTEMPH5\": \"\",\r\n\t\t\t\t\"ZTEMPH6\": \"\",\r\n\t\t\t\t\"ZTEMPH7\": \"\",\r\n\t\t\t\t\"ZTEMPH8\": \"\",\r\n\t\t\t\t\"ZTEMPH9\": \"\",\r\n\t\t\t\t\"ZTEMPH10\": \"\",\r\n\t\t\t\t\"ZZCUSTREF\": null,\r\n\t\t\t\t\"TDLINE3\": \"\"\r\n\t\t\t\t\r\n\t\t\t\t\r\n\t\t\t}\r\n\t\t]\r\n\t}\r\n} \r\n\r\n");
		Request request = new Request.Builder()
				.url("https://unilvr-o2cmdm-stg1.pegacloud.net/prweb/PRRestService/NABREServices/01/postECCData")
				.method("PUT", body).addHeader("Authorization", "Basic QlJFU2VydmljZU9wZXJhdG9yOlJ1bGVzQDEyMzQ=")
				.addHeader("Content-Type", "application/json")
				.addHeader("Cookie",
						"JSESSIONID=28711819730230C96B53A92C128C39EE; AWSALB=ldZAOW0YzNHHKpUD+eYfvv5UqEwS1HrEhljvzNvpPUpGxlJGhV+mer7s3SsxEUiWws6xT23v2o1qax3VEHSccjrJ45klcEzbAQuUo8/jSlhw2cAPyywGpomRiDBJ; AWSALBCORS=ldZAOW0YzNHHKpUD+eYfvv5UqEwS1HrEhljvzNvpPUpGxlJGhV+mer7s3SsxEUiWws6xT23v2o1qax3VEHSccjrJ45klcEzbAQuUo8/jSlhw2cAPyywGpomRiDBJ")
				.build();
		Response response = client.newCall(request).execute();
		System.out.println("Changing the status of the case to Pending-BotRequest");
		Reporter.log("Changing the status of the case to Pending-BotRequest");
		response.close();
	}

	public void VerifyCase(String username, String password) throws Exception {
		if (ObjectRepo.reader.getRun().equalsIgnoreCase("jenkins")) {
			TestBase.getDriver().get(System.getProperty("URL"));
		} else {
			TestBase.getDriver().get(ObjectRepo.reader.getWebsite());
		}
		loginpage = new LoginPage(TestBase.getDriver());
		loginpage.sendLoginObject(loginpage);
//		waitFor(2);
		loginpage.setUserName(username);
		loginpage.setPassword(password);
		loginpage.clickOnLoginbtn();
		SeleniumFunc.xpath_GenericMethod_Click(xpath_home_tab);

		// Assert.assertTrue(SeleniumFunc.xpath_Genericmethod_verifyElementPresent(xpath_search_for_item));
		// SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_search_for_item, son);
		// SeleniumFunc.xpath_GenericMethod_Click(xpath_search_icon);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_advancedsearchicon);
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_salesordernumber_textbox, son);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_Search_Btn);
//		SeleniumFunc.waitFor(3);
		String caseid_value = SeleniumFunc.xpath_Genericmethod_getElementText(xpath_getcaseid_text);
		caseid = caseid_value;
		System.out.println(caseid);
//		SeleniumFunc.waitFor(3);
		// SeleniumFunc.xpath_GenericMethod_Click(xpath_getcaseid_text);
		System.out.println("Verified case created in the Application");
		Reporter.log("Verified case created in the Application");
	}
	
	public void verifyCaseUsingSalesOrderNumber(String username, String password, String salesordernumber) throws Exception {
		String caseid=null;
		if (ObjectRepo.reader.getRun().equalsIgnoreCase("jenkins")) {
			TestBase.getDriver().get(System.getProperty("URL"));
		} else {
			TestBase.getDriver().get(ObjectRepo.reader.getWebsite());
		}
		loginpage = new LoginPage(TestBase.getDriver());
		loginpage.sendLoginObject(loginpage);
//		waitFor(2);
		loginpage.setUserName(username);
		loginpage.setPassword(password);
		loginpage.clickOnLoginbtn();
		SeleniumFunc.xpath_GenericMethod_Click(xpath_home_tab);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_advancedsearchicon);
		SeleniumFunc.xpath_GenericMethod_Sendkeys(xpath_salesordernumber_textbox, salesordernumber);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_Search_Btn);
//		SeleniumFunc.waitFor(3);
		try {
		String caseid_value = SeleniumFunc.xpath_Genericmethod_getElementText(xpath_getcaseid_text);
		caseid = caseid_value;
		System.out.println(caseid);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		if(caseid==null) {
			System.out.println("New Case ID can be created for this sales order number :"+salesordernumber+ "because case ID is: " +caseid);
			Reporter.log("New Case ID can be created for this sales order number :"+salesordernumber+ "because case ID is: " +caseid);
		}else {
			System.out.println("Case ID exist for the sales order number: "+ salesordernumber + " Could not create New case because case ID is: "+caseid);
			Reporter.log("Case ID exist for the sales order number: "+ salesordernumber + " Could not create New case because case ID is: "+caseid);
		}
		
//		SeleniumFunc.waitFor(3);
	}

	public void getRequestCasesUsingBot() throws IOException {
		OkHttpClient client = new OkHttpClient().newBuilder().build();
		Request request = new Request.Builder()
				.url("https://unilvr-o2cmdm-stg1.pegacloud.net/prweb/PRRestService/BOTServices/V1/GetOrderCRDetails")
				.method("GET", null).addHeader("Authorization", "Basic QlJFU2VydmljZU9wZXJhdG9yOlJ1bGVzQDEyMzQ=")
				.addHeader("Content-Type", "application/json")
				.addHeader("Cookie",
						"JSESSIONID=D0991B87DDB477799DC4893C3504AD1C; AWSALB=1m2oWs1cwxY57AhNSFFlxW/xwHAhqyZYROQ2BLF9Kjy3Db6ar9LKnUbaWzXr1DAMo6NyzvtGkytDrUuDu+bS5/3BNvr29FbbwCPdsh+Fv8pqTUeAq9YOaqzZz9as; AWSALBCORS=1m2oWs1cwxY57AhNSFFlxW/xwHAhqyZYROQ2BLF9Kjy3Db6ar9LKnUbaWzXr1DAMo6NyzvtGkytDrUuDu+bS5/3BNvr29FbbwCPdsh+Fv8pqTUeAq9YOaqzZz9as")
				.build();
		Response response = client.newCall(request).execute();
		System.out.println("Changing the status of the case to Pending-BotResponse");
		Reporter.log("Changing the status of the case to Pending-BotResponse");
		response.close();
	}

	public void putRequestChangeCaseToRouting(String CreditLimit, String CreditLimitUsage, String NextDate,
			String PastDue, String WeightAvgDays, String Creditlimitusage_TR,String BOTStatus) throws IOException {

		this.CreditLimit = CreditLimit;
		this.CreditLimitUsage = CreditLimitUsage;
		this.NextDate = NextDate;
		this.PastDue = PastDue;
		this.WeightAvgDays = WeightAvgDays;
		this.Creditlimitusage_TR = Creditlimitusage_TR;
		this.BOTStatus=BOTStatus;

		OkHttpClient client = new OkHttpClient().newBuilder().build();
		MediaType mediaType = MediaType.parse("application/json");
		RequestBody body = RequestBody.create(mediaType,
				"\r\n{\r\n  \"OrderList\": [\r\n    {\r\n      \"CaseID\": \"" + caseid
						+ "\",\r\n      \"CreditLimit\": \"" + CreditLimit + "\",\r\n      \"CreditLimitUsage\": \""
						+ CreditLimitUsage + "\",\r\n      \"TotalReceivables\": \"" + Creditlimitusage_TR
						+ "\",\r\n      \"NetValue\": \"4672.32\",\r\n      \"NextDate\": \"" + NextDate
						+ "\",\r\n      \"PastDue\": \"" + PastDue + "\",\r\n      \"WeightAvgDays\": \""
						+ WeightAvgDays + "\",\r\n      \"BOTStatus\": \"" + BOTStatus + "\"\r\n    }\r\n   ]\r\n}");
		Request request = new Request.Builder()
				.url("https://unilvr-o2cmdm-stg1.pegacloud.net/prweb/PRRestService/BOTServices/V1/PutOrderCRDetails")
				.method("PUT", body).addHeader("Authorization", "Basic QlJFU2VydmljZU9wZXJhdG9yOlJ1bGVzQDEyMzQ=")
				.addHeader("Content-Type", "application/json")
				.addHeader("Cookie",
						"JSESSIONID=71F93BA234F3E2D054A790BC0C2E9978; AWSALB=Yzvpap/gNIKXkMYg3VR0c1wQ6Hsb2MfsajswEeJQZJ2shmUlpu+69eckY6MCquVMygm/l3llOT8eAGmYSy6b1GB3Ce3+hiLWoHbb8Vt9+pzTGVwflx8VI0ktSzlx; AWSALBCORS=Yzvpap/gNIKXkMYg3VR0c1wQ6Hsb2MfsajswEeJQZJ2shmUlpu+69eckY6MCquVMygm/l3llOT8eAGmYSy6b1GB3Ce3+hiLWoHbb8Vt9+pzTGVwflx8VI0ktSzlx")
				.build();
		Response response = client.newCall(request).execute();
		System.out.println("Changing the status of the case to Pending-RevenueSpecialistReview");
		Reporter.log("Changing the status of the case to Pending-RevenueSpecialistReview");
		response.close();

	}

	public void clickCaseID() throws Exception {
		SeleniumFunc.waitFor(60);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_getcaseid_text);
	}

	public void performTheGetRequestOfBot() {
		
	}
	public void clickOnCaseIDToVerifyBotRequestResponse() throws Exception {
		// SeleniumFunc.waitFor(60);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_getcaseid_text);
	}

	public void verifyTheCaseResponsbile_SLA(String caseresponsible, String sla) throws Exception {
//		waitFor(2);
		driver.navigate().refresh();
//		waitFor(2);
		String case_responsible = SeleniumFunc.xpath_Genericmethod_getElementText(xpath_caseresponsible);
		System.out.println("The Case Responsible is: " + case_responsible);
		Reporter.log("Actual Case Responsible is: " + case_responsible + " " + "Excepted Case Responsible is: " +caseresponsible);
		Assert.assertEquals(case_responsible, caseresponsible, "Actual caseresponsible is: " + case_responsible
				+ "and Expected caseresponsible is :" + caseresponsible);
		SeleniumFunc.xpath_GenericMethod_Click(xpath_sla);
		String case_sla = SeleniumFunc.xpath_Genericmethod_getElementText(xpath_sla);
		System.out.println("SLA is: " + case_sla);
		Reporter.log("Actual SLA is: " + case_sla + " " + "and Expected SLA is :" + sla );
		Assert.assertEquals(case_sla, sla, "Actual SLA is: " + case_sla + "and Expected SLA is :" + sla);
	


	}
}
