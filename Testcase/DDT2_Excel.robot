*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Resource   ../Resource/login_Resouce.robot
Library   DataDriver   ../TestData/test.xlsx    sheet_name=Sheet1
Suite Setup    Open my browser
Suite Teardown   Close browser
Test Template    Invalid Login

*** Test Cases ***
LoginTestwithexcel using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]   ${username}  ${password}
    Input into Element   id:Email   ${username}
    Input into Element    id:Password   ${password}
    Click element on GUI   //input[@class='button-1 login-button']
#    Error message should be visible