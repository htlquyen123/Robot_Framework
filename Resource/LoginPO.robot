*** Settings ***
Documentation    Suite description
Library    SeliniumLibrary
Variables   ../PO/Locator.py

*** Keywords ***
Open my browser
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    maximize browser window

Enter Username
    [Arguments]    ${username}
    input text    ${txtUserName}   ${username}

Enter password
    [Arguments]    ${password}
    input text     ${txtPassword}  ${password}

Click login button
    click element   ${btn_signIn}

verify succesfull Login
    title should be  Sign-on: Mercury Tours

close my browsers
    close all browsers


