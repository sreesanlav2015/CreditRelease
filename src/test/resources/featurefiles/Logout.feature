Feature: Validate the logout

  @Smoke @Regression @Test
  Scenario: Validate Logout scenario
    Given Steps for logout in case of failure
    Given Open the browser and navigate to the url
    When I enter username as "manikumar.kosireddi@Areteanstech.com"
    And I enter password as "Rules@123"
    And I click on Login button
    Then Login should be successful
    When I click on down arrow
    And I click on Logout
    Then Logout should be successful
