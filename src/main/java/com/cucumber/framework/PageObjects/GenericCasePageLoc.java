package com.cucumber.framework.PageObjects;

public interface GenericCasePageLoc {
	
	String xpath_searchcustomer_dd="//select[@data-test-id='201610190747440120129777']";
	String xpath_customernumber_textbox="//input[@data-test-id='2015052504543705231680']";
    String xpath_searchicon_btn="//i[@name='CPMSearchInHeader_pyDisplayHarness_3']";
    String xpath_threedots_btn="//button[@name='SearchResultsBUGrid_pySearchResults.pxResults(1)_152']";
    String xpath_startresearch_btn="//span[@class='menu-item-title' and text()='Start research']";
    String xpath_addtasks_btn="//button[text()='Add tasks']";
    String xpath_closebtn="//button[@title='Close']";
    String xpath_Addtask_btn1="//div[@class='panelOverFlowClass']";
    String xpath_addtask_btn="//button[@title='Add Task']";
    String xpath_type1_dd="//select[@id='2f904b11']"; 
    String xpath_type2_dd="//select[@id='c7bd997f']";
    String xpath_type3_dd="//select[@id='d5a9ea2d' and @data-test-id='201904051234080173147817']";
    String xpath_parties_Org_tab="//h1[text()='Parties & Organization']";
    String xpath_salesorg_dd="//select[@id='66905d38']";
    String xpath_distchnl_dd="//select[@id='02b682c3' and @data-test-id='201901301534530532334608']";
    String xpath_division_dd="//select[@data-test-id='201901301534530531332489' and @name='$PpyWorkPage$pCustomer$pDivision' and @id='d03587fd']";
    String xpath_refresh_btn="//i[@title='Refresh My Work Gadget' and @class='icons pi pi-refresh pi-link pi-poptop-close']";
    //String xpath_save_btn="//button[@name='ViewClaimDetailsGC_pyWorkPage_78' and text()='Save']";
    String xpath_save_btn_kato="//button[contains(text(),'Save') and @name='ViewClaimDetailsGC_pyWorkPage_78']";
    String xpath_save_btn_na="//button[contains(text(),'Save') and @name='ViewClaimDetailsGC_pyWorkPage_84']";
    String xpath_genericcase_id="//span[@data-test-id='20160210082412023111408' and contains(text(),'CR-')]";
    //String xpath_edit_btn="//button[@name='pyAssignmentsActions_D_pyCaseContents_pa168797343212634pz.pxResults(1)_1' and text()='Edit' and @class='pzhc pzbutton']";
    String xpath_edit_btn="//*[@id=\"CT\"]/div/div/div/div/span/button";
    String xpath_credit_data_tab="//h1[contains(@id,'headerlabel') and text()='Credit Data']";
    String xpath_credit_limit_usage_percentage="//div[@data-node-id='CRCaseCreditData']/div/div/div/div[5]/div/span";
    //String xpath_edit_btn_two="//button[@data-test-id='201609091025020567152987' and text()='Edit']";
    String xpath_edit_btn_two="//*[@id=\"CT\"]/div/div/div/div/span/button";
    //String xpath_edit_btn="//button[contains(@name,'pyAssignmentsActions_D_pyCaseContents_pa') and text()='Edit' and @class='pzhc pzbutton']";
    //String xpath_edit_btn="(//tbody/tr[contains(@id,'$PD_pyCaseContents_pa')]/td[2]//div/span/button[text()='Edit'])[1]";
    String xpath_new_rdd_date="//input[@id='70b5d401']";
    String xpath_casedesc_label="//span[text()='Case Description']";
    //String xpath_otheractions_btn="//button[@name='pyActionLabelDisplaySection_pyWorkPage_19' and @class='Case_Action_Header pzhc pzbutton' and @title='Other actions']";
    String xpath_otheractions_btn="//*[@id='RULE_KEY']/div/div/div/div[2]/div/div/div/div[2]/span/button";
    String xpath_updatestatus_link="//a/span[@class='menu-item-title-wrap']/span[text()='Update Status']";
    String xpath_cancel_order_link="//a/span[@class='menu-item-title-wrap']/span[text()='Cancel Order']";
    String xpath_cancel_order_validation_message="//div[@data-test-id='2020040812455305024440']";
    String xpath_bot_validation_message="//div[contains(text(),'BOT failed to retrieve the Credit Data. Please take necessary action.')]";
    String xpath_approve_reject_link="//a/span[@class='menu-item-title-wrap']/span[text()='Approve / Reject']";
    String xpath_trigger_SOA_link="//a/span[@class='menu-item-title-wrap']/span[text()='Trigger SOA']";
    String xpath_manual_oreder_revision_link="//a/span[@class='menu-item-title-wrap']/span[text()='Manual Order Revision']";
    String xpath_refresh="//*[@id=\"RULE_KEY\"]/div/div/div/div[2]/div/div/div/div[1]/div/div[1]/span/i";
    String xpath_copycase_link="//ul/li[1]/a/span[@class='menu-item-title-wrap']/span[text()='Copy Case']";
    String xpath_new_tab="//table[@id='RULE_KEY']/tbody/tr[1]/td[2]/span[text()='New']";
    String xpath_updatestatus_dd="//select[@id='fa702c8a']";
    String xpath_partiesorganization_tab="//h1[contains(@id,'headerlabel') and text()='Parties & Organization']";
    String xpath_cfs_dropdown="//select[@id='499188a5']";
    String xpath_cp_dropdown="//select[@id='0de3fbd0']";
    String xpath_choose_action_dd="//select[@id='cc80bdd6']";
    String xpath_contactpersonmailid="//input[@id='d84057d0']";
    String xpath_manual_order_revision_dd="//select[@id='e51c70e4']";
    String xpath_remarksinupdatestatus_textbox="//textarea[@id='9b497c2a' and @data-test-id='20190822121749096547629']";
    String xpath_casestatusremarks_verify="//div[@data-layout-id='201911191542580632']/h3[contains(@id,'headerlabel') and text()='Case Status Remarks']";
    String startxpath_casestatusremarks_table="//table[@pl_prop_class='Unilever-FW-O2C-Data-CaseStatusDetails']/tbody/tr[";
    String endxpath_casestatusremarks_table="]/td[2]";
    String xpath_updatestatus_submit_btn="//button[@class='pzhc pzbutton' and text()='Submit']";
    String xpath_follow_button="//button[@name='pyActionLabelDisplaySection_pyWorkPage_12' and text()='Follow']";
    String xpath_emaildestination="//span[@data-test-id='20190905191034056352646']";
	/* Advance customer search xpaths */
    String xpath_advancecustomersearch_icon_hover="//li[@title='Customer Search']";
    String xpath_advancecustomersearch_icon_hover_NA="//li[@title='My Work']";
    String xpath_mywork_icon_link="//span[@class='menu-item-title' and text()='My Work']";
    String xpath_advancecustomersearch_icon_link="//span[@class='menu-item-title' and text()='Customer Search']";
    String xpath_advancecustomernumber_textbox="//input[@id='45bb12ca' and @data-test-id='20161103065050023944147'  and @title='Search case ID']";
    String xpath_advancecustomername_textbox="//input[@id='cdaf2547' and @data-test-id='20161107005740047317352' and @title='Search customer name']";
    String xpath_advancecustomercountrycode_textbox="//input[@id='e99da83b' and @data-test-id='2019090520195308827970']";
    String xpath_advancecustomercity_textbox="//input[@id='01c727d7' and @data-test-id='2019090520195308827970' ]";
    String xpath_advancecustomerpostalcode_textbox="//input[@id='76154e89' and @data-test-id='2019090520195308827970' ]";
    String xpath_advancecustomerstreet_textbox="//input[@id='148aadf3' and @data-test-id='2019090520195308827970' ]";
    String xpath_advancecustomersalesorganization_textbox="";
    String xpath_advancecustomerdistributionchannel_textbox="";
    String xpath_advancecustomerdivision_textbox="";
    
    String xpath_advancecustomersearch_button="//button[@title='Search']";
    String xpath_advancetwodots_button="(//*[contains(@id,'$PD_CustomerSearch')]/td[13])[1]";
    String xpath_advancestartresearch_btn="//ul[starts-with(@id,'pyNavigation')]/li[2]/a";
    String xpath_advancecreategenericcase_btn="//ul[starts-with(@id,'pyNavigation')]/li[1]/a";
	/* Advance search create generic case xpaths */
    String xpath_casedesc_cgc_textbox="//input[@id='28b55c1b']";
    String xpath_type1_cgc_dd="//select[@id='0960fcdd']";
    String xpath_type2_cgc_dd="//select[@id='49313c1e']";
    String xpath_type3_cgc_dd="//select[@id='a2f89d55']";
    String xpath_updatestatus_cgc_dd="//select[@id='fa702c8a']"; 
    String xpath_remarksinupdatestatus_cgc_textbox="//textarea[@id='bdb9cbe6' and @data-test-id='20190822121749096547629']";
    
	/* CFS and CP determination xpaths */
    String xpath_custno_element="//tbody/tr[@id='$PpySearchResults$ppxResults$l1']/td[1]";
    String xpath_gcno_element="//tbody/tr[@id='$PD_SearchResultsFor_pa72118755619818pz$ppxResults$l1']/td[1]";
    String xpath_cfs_dd="//select[@id='37faae9b']";
    String xpath_cp_dd="//select[@id='37d826bb']";
    String xpath_cfs_default_NotAvailable="//div[text()='Customer does not have CFS by default  please contact the CFS administrator']";
    String xpath_no_cfs_assigned="//div[text()='Customer does not have CFS  assigned to  please contact the CFS administrator']";
    String xpath_casecannotcreate="//div[contains(text(),'Case can`t be created.')]";
    
	/* Email Inbound and Outbound xpaths */
    String xpath_sendmail_link="(//a/span[@class='menu-item-title-wrap']/span[text()='Send Mail'])[1]";
    String xpath_selectcp_btn="//button[text()='Select CP']";
    String xpath_selectcp_chkbox="//input[@id='39926e3f']";
    String xpath_cp_submit_btn="//button[text()='  Submit ']";
    String xpath_informationonly_btn="//label[contains(@for,'Information Only')]";
    String xpath_pendingresponseonly_btn="//label[contains(@for,'Pending Response')]";
    String xpath_externalnotes_tab_xpath="//h3[contains(@id,'headerlabel') and text()='External Notes'] ";
    String xpath_externalnotes_btn="//textarea[@id='5e1978c7' and @data-test-id='201909042300080398266679'] ";
    String xpath_email_destination_dd="//select[@id='bdfcbea0']";
    String xpath_sendemail_btn="//button[text()='Send Email']";
    
    String xpath_caseidsearch_threedots_btn="//button[contains(@name,'SearchResultsWorkCasesGrid_D_SearchResultsFor')]";
    String xpath_caseidsearch_closetab="//span[@title='Close Tab']";
    String xpath_caseidsearch_emailinformationtab="//div[@aria-label='Email information']/h3[text()='Email information']";
    //String xpath_customerhierarchy="//h1[contains(@id,'headerlabel5524')]";
    //String xpath_caseidsearch_emailinformationtab="//h3[contains(@id,'headerlabel9225')]";
    //String xpath_caseidsearch_emailinformationtablast="//*[@id='headerlabel7822']";
    String xpath_replymail_subject="//a[contains(@id,'att_feed_desc') and contains(text(),'RE:')]";
    
	/* Assign To xpaths */
    String xpath_assignto_btn="//a[@data-test-id='20190827092526022488592' and text()='Assign To']";
    String xpath_assign_to_cfs_link="//span[text()='Assign To CFS']";
    String xpath_assign_to_newassignee_link="//span[text()='Assign To New Assignee & WB']";
    String xpath_assign_to_previousassignee_link="//span[text()='Assign To Previous Assignee']";
    String xpath_assign_to_workbasket_link="//span[text()='Assign To Work Basket']";
    String xpathstart_MyWB_caseid = "//tbody/tr[@id='$PpgRepPgSubSectionCPMMyWorkBasketListBBB$ppxResults$l";
    String xpathend_MyWB_caseid= "']/td[1]"; 
    String xpathstart_MyFollowed_caseid = "//table[@pl_prop='D_pxFavorites.pxResults']/tbody/tr[";
    String xpathend_MyFollowed_caseid="]/td[2]";
    
    String xpathstart_mywb_caseid="//table[@pl_prop='D_GetWBByOperator.pxResults']/tbody/tr[";
    String xpathend_mywb_caseid="]/td[2]";
    
    String xpathstart_mycases_caseid="//table[@pl_prop='D_UserWorkList.pxResults']/tbody/tr[";
    String xpathend_mycases_caseid="]/td[2]";
    
    String xpathstart_namycases_caseid="//table[@pl_prop='pgRepPgSubSectionpyUserWorkListBBB.pxResults']/tbody/tr[";
    String xpathend_namycases_caseid="]/td[1]";
    
    String xpathstart_namycases_caseid_SOA="//table[@pl_prop='D_GetSOAWorkList.pxResults']/tbody/tr[";
    String xpathend_namycases_caseid_SOA="]/td[2]";
    
    
    String xpathstart_mywbna_caseid="//table[@pl_prop='pgRepPgSubSectionCPMMyWorkBasketListBBB.pxResults']/tbody/tr[";
    String xpathend_mywbna_caseid="]/td[1]";
    
//    String xpathstart_MyWL_caseid = "//tbody/tr[@id='$PpgRepPgSubSectionpyUserWorkListBBB$ppxResults$l";
//    String xpathend_MyWL_caseid= "']/td[1]";  
    String xpathstart_MyWL_caseid = "//a[@name='pyUserWorkList_pgRepPgSubSectionpyUserWorkListBBB.pxResults(";
    String xpathend_MyWL_caseid= ")_53']";
    String xpath_previousassigneelist_dd="//select[@id='1bb11c02']";
    String xpath_previousassignee_submit_btn="//button[text()='Submit']";
    //String xpath_closetab="//span[@id='close' and @title='Close Tab']";
    String xpath_down_arrow="//span[@class='textIn']";
    String xpath_close_all="//td[@id='ItemMiddle' and @title='Close All']";
    String xpath_newsassigneelist_Mycases_dd="//input[@id='1bb11c02']";
    //String xpath_newsassigneelist_dd="//input[@id='e5267814']";
    String xpath_newsassigneelist_dd="//input[@id='1bb11c02']";

    //String xpath_assigntotype_dd="//select[@id='83130f78' and @data-test-id='202001082344560296156994']";
    String xpath_assigntotype_dd="//select[@id='d554e179' and @data-test-id='202001082344560296156994']";

    String assigntotypevalue="Operator";
   
	/* Home page xpaths */
    String xpath_workbasket_header="//h3[contains(@id,'headerlabel') and text()='My Workbasket']";
    //String xpath_workbasket_header="//*[@id='headerlabel425']";
    String xpath_viewqueuefor_dd="//select[@id='126b0ac6']";
    String xpath_followedcases_header="//h3[contains(@id,'headerlabel') and text()='Followed Cases']";
    //String xpath_followedcases_header="//*[@id='headerlabel6781']";
    String xpath_home_tab="//span[text()='Home']";
    String xpath_myreport_Hover="//li[@title='My Reports']";
    String xpath_myreport_link="//span[@class='menu-item-title' and text()='My Reports']";
    String xpath_bre_log_link="//a[@title='BRELogsList']";
    String xpath_caseid_bre="//td[@data-attribute-name='Case ID']/div/span[contains(text(),'CR-')]";
    String xpath_bre_status="//td[@data-attribute-name='BRE Status']/div/span";
    
    String xpath_filtercaseid_followedcase="//table[@pl_prop='D_pxFavorites.pxResults']/tbody/tr/th[2]/div/span/a[@id='pui_filter']";
   // String xpath_filtercaseid_followedcase="//*[@id=\"$PD_pxFavorites_pa62572107302470pz$ppxResults$l1\"]/td[2]/div/span/a";
    //String xpath_filtercaseid_followedcase="//*[@id=\"pui_filter\"]";
    String xpath_filetercaseid_mywb="//table[@pl_prop='D_GetWBByOperator.pxResults']/tbody/tr/th[2]/div/span/a[@id='pui_filter']";
    String xpath_filtercasaeid_mycaseid="//table[@pl_prop='D_UserWorkList.pxResults']/tbody/tr/th[2]/div/span/a[@id='pui_filter']";
    String xpath_filtercaseid_namywbid="//table[@pl_prop='pgRepPgSubSectionCPMMyWorkBasketListBBB.pxResults']/tbody/tr/th/div/span/a[@id='pui_filter']";
    String xpath_filtercaseid_nacaseid="//table[@pl_prop='pgRepPgSubSectionpyUserWorkListBBB.pxResults']/tbody/tr/th/div/span/a[@id='pui_filter']";
    String xpath_filtercaseid_nacaseid_SOA="//table[@pl_prop='D_GetSOAWorkList.pxResults']/tbody/tr/th/div/span/a[@id='pui_filter']";
    //String xpath_filtercaseid_namywbid="//table[@pl_prop='pgRepPgSubSectionCPMMyWorkBasketListBBB.pxResults']/tbody/tr/th/div[2]/span[2]/a[@id='pui_filter']";
    String xpath_searchtextinfilternamycaseid="//input[@id='42294663']";
    String xpath_searchtextinfilternamycaseid_SOA="//input[@id='8a854f74']";
    String xpath_searchtextinfilterwbna="//input[@id='a49be9dd']";
    String xpath_searchtextinfiltercaseid="//*[@id=\"a548864f\"]";
    String xpath_searchtextinfilterwb="//input[@id='8695fedf']";
    String xpath_searchtextinfilterfollowedcase="//input[@id='a7d1d932']";
    String xpath_searchtextinfiltermycaseid="//input[@id='a548864f']";
    String xpath_applyinfiltercaseid_btn="//button[text()='Apply']";
	/* Case log xpaths */
    String caselog_xpathstart="//table[@pl_prop='D_CaseChangeLog.pxResults']/tbody/tr[";
    String caselog_xpathmid="]/td[";
    String caselog_xpathend="]";
    
    String xpathstart_caselog="//table[@pl_prop='D_CaseChangeLog.pxResults']/tbody/tr[";
    String xpathend_caselog="]/td[3]";
    String xpath_changecaselog_tab="//h3[contains(@id,'headerlabel') and text()='Case Change Log']";
    String xpath_casestatusremarks_tab="//h3[contains(@id,'headerlabel') and text()='Case Status Remarks']";
    
	/* SLA and Resolution Time xpaths */
    String xpath_sla="//span[@data-test-id='2019060712155402251014']";
    String xpath_createdon="(//span[@data-test-id='2019021417474507071394605'])[1]";
    String xpath_resolutiontime="(//span[@data-test-id='2019021417474507071394605'])[3]";
    String xpath_remainingsla="//div[@class='field-item dataValueRead']/span[@class='nowrap']";
    
    /* Advance Search */
   	String xpath_AdvanceSearch_Hover="//li[@title='Advanced Case Search']";
   	String xpath_Advancesearch_link="//span[@class='menu-item-title' and text()='Advanced Case Search']";
   	String xpath_Advancesearch_SalesOrganization="//select[@id='163fed33' and @data-test-id='20190904161043049222462']";
   	String xpath_Advancesearch_searchbutton="//button[@name='CPMSearchAdvancedResultsActions_pyDisplayHarness_12' and text()='Search']";
   	String xpath_AdvanceSearch_exporttoexcelbutton="//button[@name='CPMAdvanced_Search_Results_pyDisplayHarness_18' and text()='Export to Excel']";
   	String xpath_AdvanceSearch_clearbutton="//button[@name='CPMSearchAdvancedResultsActions_pyDisplayHarness_9' and text()='Clear']";
   	String xpath_type1_advancesearch="//select[@data-test-id='20190905183745076966338' and @id='de7da4ac']";
   	String xpath_type2_advancesearch="//select[@data-test-id='20190905183745077067343' and @id='4774f516']";
   	String xpath_type3_advancesearch="//select[@data-test-id='2016110306321204452562' and @id='3073c580']";
   	String xpath_genericase_advancesearch="//select[@id='7f60f676' and @data-test-id='20190905182941099590977']";
   	String xpath_currentcasestatus_advancesearch="//input[@id='5da28913' and @data-test-id='20161104043742075320481']";
   	String xpath_salesordernumber_advancesearch="//input[@id='ae175023' and @data-test-id='20190918124301059843594']";
   	String xpath_currentcaseresponsible_advancesearch="//input[@id='d0a62c9e' and @class='autocomplete_input ac_']";
   	String xpath_casecreator_advancesearch="//input[@id='8cb07839' and @data-test-id='20161107005740047317352']";
   	String xpath_casenumber_advancesearch="//input[@data-test-id='20161103065050023944147' and @id='33f0f49b']";
    
    
}
