package com.cucumber.framework.PageObjects;

public interface LoginPageLoc {
	
	String username_xpath="//input[@id='txtUserID']";
	String password_xpath="//input[@id='txtPassword']";
	String login_btn_xpath="//span[@class='loginButtonText' and text()='Log in']";
	String verify_elementpresent_xpath="//img[@name='CPMInteractionPortalHeaderTop_pyDisplayHarness_2']"; //span[text()='O2CKatowice']
	String loginclosebtn_xpath="//div[@class='pzbtn-mid' and text()='Close']";
    String error_msg_xpath="//div[@id='error' and text()='                   The information you entered was not recognized.          ']";
}
