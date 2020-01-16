*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
*** Test Cases ***
NavigationTest
    open browser   https://www.google.com/  chrome
    maximize browser window
    ${loc}=  get location
    log to console   ${loc}

    sleep  2
#    go to the new URL
    go to  https://www.bing.com/
    maximize browser window
    ${loc}=  get location
    log to console  ${loc}
    sleep  3
# go back the old URL

    go back
    ${loc}=  get location
    log to console   ${loc}
    close browser


*** Keywords ***
