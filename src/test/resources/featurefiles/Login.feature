Feature: Login feature test

  #Author U.Ramakrishna
  #@TestLogin @TestLoginSIT @TestLoginUAT
  Scenario Outline: Login with valid credentials
   # Given Steps for login in case of failure
    Given Open the browser and navigate to the url
    When I enter username as "<Username>"
    And I enter password as "<Password>"
    And I click on Login button
    Then Login should be successful

    @SITSMOKE @SITREG
    Examples: 
      | Username        | Password |
      | Performance_csr | rules    |

    @UATSMOKE 
    Examples: 
      | Username            | Password |
      | Performance_testing | rules    |
