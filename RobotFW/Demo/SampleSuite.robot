*** Settings ***
Library    SeleniumLibrary
Default Tags    Regression 
Test Setup    Open Browser    ${url}    ${browser}
Test TearDown    Close Browser

*** Test Cases ***
TestCase1: LoginTest with ValidCredentials
  [Tags]    HappyPath    # this tag overrides the global tag "Default Tags Regression" Tag defined at the testcase level takes the prority and shows in report
  Log To Console    ValidLogin
  Maximize Browser Window
  Navigate To SignIn Page 
  Enter Valid Username
  Enter Valid Password    #user defined keyword  in **KEYWORD** section     
  Click on SignIn Button 
  Sleep    5s    
  Verify Window Title   

TestCase2: LoginTest with InValidCredentials
   [Tags]    SadPath
   Log To Console  InValidLogin
   #Set Browser Implicit Wait     5
   Maximize Browser Window    # demo of implict path startegy 
   Navigate To SignIn Page
   Enter Valid Username
   Enter InValid Password    #user defined keyword  in **KEYWORD** section     
   Click on SignIn Button 
   Verify Window Title  
    

*** Variables ***
${url}    https://www.postman.com/
${browser}     chrome
${Username}    keerthiboston@gmail.com    #demo of DICTIONARY variable
&{Passwords}   ValidPassword=Boston@1234    InvalidPassword=Incorrectpassword@1234
${ExpectedwindowTitleAfterSignIn}     Postman API Platform 
    
*** Keywords ***
Navigate To SignIn Page
    Click Element   //div[@class='sc-fzokOt hLgJkJ']//span[@class='Button__StyledButtonText-sc-1lbqkyz-2 ipCVAL aether-button__text' and text()='Sign In']      # demo of implict path startegy 

Enter Valid username
    Input Text    id:username  ${Username}    # demo of scalar variable usage
Enter Valid password  
    Input Text    id:password    ${Passwords}[ValidPassword]     # demo of DICTIONARY variable usage
      
Click on SignIn Button
    Click Button  id:sign-in-btn
    
Enter InValid password  
    Input Text    id:password   ${Passwords}[InvalidPassword]
    
Verify Window Title
     ${Title}    Get Title   #current brower window title
   Log To Console    ${Title}
   Should Be Equal    ${Title}    ${ExpectedwindowTitleAfterSignIn}
  