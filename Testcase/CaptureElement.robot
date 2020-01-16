*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Test Cases ***
LoginTC
    [Tags]    DEBUG
#    open browser   https://opensource-demo.orangehrmlive.com/  chrome
#    maximize browser window
#    input text    id:txtUsername  Admin
#    input text   id:txtPassword   admin123
#    capture element screenshot   xpath://*[@id="divLogo"]/img   D:/AU/DemoExcel/logo.png
#    capture page screenshot   D:/AU/DemoExcel/LoginTC.png

    open browser    https://staging.onebigswitch.com.au/   chrome
    maximize browser window
    Input into Element  //div[@id='join-for-free']//input[@id='guest_user_email']   htlq@gmail.com
*** Keywords ***
Input into Element
    [Arguments]  ${locaton}  ${username}   ${timeout}=5s
    wait until page contains element  ${locaton}  ${timeout}
    input text  ${locaton}  ${username}

Provided precondition
