*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../Variables/Variables.robot
*** Keywords ***  
Navigate To SignIn Page
    Click Element   //div[@class='sc-fzokOt hLgJkJ']//span[@class='Button__StyledButtonText-sc-1lbqkyz-2 ipCVAL aether-button__text' and text()='Sign In']      # demo of implict path startegy 
Enter Valid username
    Input Text    id:username  ${Username}    # demo of us SCALAR variable usage
Enter Valid password  
    Input Text    id:password    ${Passwords}[ValidPassword]     # demo of DICTIONARY variable usage
Click on SignIn Button
    Click Button  id:sign-in-btn
Enter InValid password
    Input Text    id:password   ${Passwords}[InvalidPassword]
Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${PATH}