*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Variables.robot
*** Keywords *** 
Verify SignInPageTitle    
   ${Title}    Get Title    #Returns the Title of the current window
   Should Be Equal    ${Title}    ${ExpectedwindowTitle}[0]   #Keyword resuage 
Verify HomePageTitle   
   ${Title}    Get Title
   Should Be Equal    ${Title}    ${ExpectedwindowTitle}[1]    # demo of LIST variable usage
Maximise Browser
     Maximize Browser Window    #for the better visibility
Wait
     Set Selenium Implicit Wait    10s    #defualt time is 5s