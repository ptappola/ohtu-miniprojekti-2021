*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SERVER}  127.0.0.1:5000
${BROWSER}  headlesschrome
${DELAY}  0.3 seconds
${HOME URL}  http://${SERVER}
${REGISTER URL}  http://${SERVER}/register
${SIGNIN URL}  http://${SERVER}/signin
${ADD URL}  http://${SERVER}/add

*** Keywords ***
Open And Configure Browser
    Open Browser  browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

Go To Main Page
    Go To  ${HOME URL}

Go To Register Page
    Go To  ${REGISTER URL}

Register Page Should Be Open
    Title Should Be  Register

Go To Signin Page
    Go To  ${SIGNIN URL}

Signin Page Should Be Open
    Title Should Be  Signin

Add Tips Page Should Be Open
    Title Should Be  new reading tip

Go To Add Tips Page
    Go To  ${ADD URL}