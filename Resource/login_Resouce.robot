*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}   https://admin-demo.nopcommerce.com/
${BROWSER}   chrome
#*** Test Cases ***
#Test title
#    Open Browser  ${LOGIN URL}  ${BROWSER}


*** Keywords ***
Open my browser
    Open Browser  ${LOGIN URL}   ${BROWSER}
     Maximize Browser Window

Close browser
    Close All Browsers

Open login page
    Go To  ${LOGIN URL}

Input into Element
    [Arguments]  ${locaton}  ${username}   ${timeout}=5s
    Wait Until Page Contains Element  ${locaton}  ${timeout}
    Input Text  ${locaton}  ${username}

Click element on GUI
    [Arguments]  ${locaton}     ${timeout}=5s
    Wait Until Page Contains Element  ${locaton}  ${timeout}
    Click Element  ${locaton}

Error message should be visible
    Page Should Contain   Login was unsuccessfull

Dashboard page should be visible
    Page Should Contain  Dashboard
