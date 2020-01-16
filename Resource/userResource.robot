*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Keywords ***
LaunchBrowser
    [Arguments]  ${Appurl}  ${AppBrowser}
    open browser   ${Appurl}  ${AppBrowser}
    maximize browser window
    ${title}=  get title
    [Return]    ${title}

