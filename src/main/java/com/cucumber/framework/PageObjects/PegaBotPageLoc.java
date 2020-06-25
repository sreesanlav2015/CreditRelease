package com.cucumber.framework.PageObjects;

public interface PegaBotPageLoc {
	
    String xpath_home_tab="//span[text()='Home']";
	String xpath_search_for_item="//input[@name='$PpyDisplayHarness$ppySearchText']";
	String xpath_search_icon="//i[@name='CPMSearchInHeader_pyDisplayHarness_3']";
	String xpath_getcaseid_text="//a[@name='CPMAdvanced_Search_Results_pgRepPgSubSectionCPMAdvanced_Search_ResultsBBB.pxResults(1)_84' and contains(text(),'CR-')]";
	String xpath_advancedsearchicon="//li[@title='Advanced Case Search' and @data-test-id='20190904112757098116']";
	String xpath_salesordernumber_textbox="//input[@data-test-id='20190918124301059843594']";
	String xpath_Search_Btn="//button[@name='CPMSearchAdvancedResultsActions_pyDisplayHarness_12' and @title='Search']";
	String xpath_refreshicon="//span/i[@name='pyActionLabelDisplaySection_pyWorkPage_11']";
	String xpath_refresh="//div[@data-test-id='201908270925260223312']/div/span/i[@data-test-id='202002041520420568155200']";
	String xpath_caseresponsible="//span[text()='CR BOT WB' and @data-test-id='2019020700372102121019683']";
	String xpath_sla="//span[@data-test-id='2019060712155402251014' and text()='8 hrs and 0 mins']";
	String xpath_casetype="//span[@data-test-id='2019020700372102141022759' and text()='Credit Release']";
	
}
