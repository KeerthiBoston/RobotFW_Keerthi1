*** Variables ***
${url}    https://www.postman.com/ 
${browser}     chrome    
${Username}    keerthiboston@gmail.com    #demo of SCALAR variable
&{Passwords}   ValidPassword=Boston@1234    InvalidPassword=Incorrectpassword@1234    #demo of DICTIONARY variable
@{ExpectedwindowTitle}    Postman - Sign In    Postman API Platform    #demo of LIST variable
${HomePageElement}  //div[@class='top-navigation-button' and text()='Home']    #implict Xpath path strategy demo
${PATH}    ${CURDIR}/chromedriver.exe 