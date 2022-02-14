*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../../Resources/CommonFunctionalities/CommonFunctionalities.robot
Resource    ../../Resources/Variables/Variables.robot
Resource    ../../Resources/Keywords/Keywords.robot
Suite Setup  Setup chromedriver
Test Setup    Open Browser    ${url}    ${browser}
Test TearDown   Close Browser

*** Test Cases ***
TestCase1:Verify able to navigate to SignInPage
  [Tags]    RegressionTest
  Log To Console   SignInPage
  Wait
  Maximise Browser
  Navigate To SignIn Page
  Verify SignInPageTitle
  
TestCase2: LoginTest with ValidCredentials
  [Tags]    SmokeTest
  Log To Console    ValidLogin
  Maximise Browser
  Navigate To SignIn Page 
  Enter Valid Username
  Enter Valid Password   
  Click on SignIn Button     
  Wait Until Page Contains Element    ${HomePageElement}  error=element not found     
  Verify HomePageTitle 
  
TestCase3: LoginTest with InValidCredentials
   [Tags]    RegressionTest
   Log To Console  InValidLogin
   Maximise Browser 
   wait
   Navigate To SignIn Page
   Enter Valid Username
   Enter InValid Password      
   Click on SignIn Button 
   Verify HomePageTitle