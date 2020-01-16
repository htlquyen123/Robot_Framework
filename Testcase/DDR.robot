*** Settings ***
Library   SeleniumLibrary
Resource   ../Resource/login_Resouce.robot
Test Setup   Open my browser
Test Teardown   Close browser
Suite Setup   Open my browser
Suite Teardown   Close browser  #after run complete all test case will close browser

#open and close browser per each test case
#Test Setup   Open my browser
#Test Teardown   Close browser

Test Template    Invalid Login
Documentation    Suite description


*** Test Cases ***                username                      password
Right user empty pass             admin@yourstore.com           ${EMPTY}
Right user wrong pass             admin@yourstore.com           xpd
wrong user right pass             adrrmin@yourstore.com           admin
wrong user empty pass             adrmin@yourstore.com           ${EMPTY}
wrong user wrong pass             admrin@yourstore.com           xyz

*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${pwd}
    Input into Element  id:Email   ${username}

    Input into Element  id:Password   ${pwd}
    Click element on GUI   //input[@class='button-1 login-button']

