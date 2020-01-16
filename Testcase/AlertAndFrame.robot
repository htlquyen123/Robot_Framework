*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Test Cases ***
Handling Alert
    open browser   http://testautomationpractice.blogspot.com/  chrome
    click element   xpath://button[contains(text(),'Click Me')]
    sleep    3 seconds
#    handle alert   accept   (OK)
#    handle alert   dismiss  (Cancel)
#    handle alert  leave
#    alert should be present   Press a button!

    select frame    packageListFrame
    click link   org.selenium.com
    unselect frame

    select frame   tessst
    click link   1234
    unselect frame

    close browser



*** Keywords ***
