package com.cucumber.framework.PageObjects;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;
import org.testng.Reporter;

import com.cucumber.framework.CS.CustomerServ;
import com.cucumber.framework.GeneralHelperSel.SeleniumFunc;
import com.cucumber.framework.helper.Logger.LoggerHelper;

public class LoginPage extends CustomerServ implements LoginPageLoc {
	private final Logger log = LoggerHelper.getLogger(LoginPage.class);
	LoginPage loginpage;

	public LoginPage(WebDriver driver) {
		super(driver);
	}

	public void testLoginPage() {
		// System.out.println("In TestLoginPage method :"+ driver);
	}

	public void sendLoginObject(LoginPage loginpage) {
		this.loginpage = loginpage;
		// System.out.println("In sendLoginObject method search page"+this.loginpage);
	}

	public void setUserName(String username) throws Exception {
		/*
		 * WebElement username_txtbox=driver.findElement(By.xpath(username_xpath));
		 * loginpage.waitForElement(username_txtbox, 3);
		 * username_txtbox.sendKeys(username); //System.out.println("UserName" +driver);
		 */
		waitFor(1);
		SeleniumFunc.xpath_GenericMethod_Sendkeys(username_xpath, username);

	}

	public void setPassword(String password) throws Exception {
		/*
		 * WebElement password_txtbox=driver.findElement(By.xpath(password_xpath));
		 * loginpage.waitForElement(password_txtbox, 3);
		 * password_txtbox.sendKeys(password); //System.out.println("Password" +driver);
		 */
		waitFor(1);
		SeleniumFunc.xpath_GenericMethod_Sendkeys(password_xpath, password);

	}

	public void clickOnLoginbtn() {
		/*
		 * WebElement login_btn=driver.findElement(By.xpath(login_btn_xpath));
		 * loginpage.waitForElement(login_btn, 3); login_btn.click();
		 * //System.out.println("Clicked login button" +driver); loginpage.waitFor(5);
		 */
		try {
			SeleniumFunc.xpath_Genericmethod_verifyElementPresent(login_btn_xpath);
			SeleniumFunc.xpath_GenericMethod_Click(login_btn_xpath);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		/*
		 * try { WebElement
		 * loginclosebtn=driver.findElement(By.xpath(loginclosebtn_xpath));
		 * waitForElement(loginclosebtn,2); loginclosebtn.click();
		 * 
		 * SeleniumFunc.xpath_GenericMethod_Click(loginclosebtn_xpath); }catch(Exception
		 * e) { System.out.println("No such element present"); }
		 */

	}

	public void verifyMsg() throws Exception {
		System.out.println("In verify login successful");
		boolean element_status = SeleniumFunc.xpath_Genericmethod_verifyElementPresent(verify_elementpresent_xpath);
		Assert.assertTrue(element_status);

	}

	public void verifyLoginFail() {

		Assert.assertTrue(driver.findElement(By.xpath(error_msg_xpath)).getText()
				.contains("The information you entered was not recognized"), "User logged in");

	}

}
