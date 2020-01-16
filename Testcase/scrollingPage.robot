*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Test Cases ***
TC
    open browser   https://www.infoplease.com/world/countries  chrome
#scroll to
#    execute javascript   window.scrollTo(0,2500)

#    scroll to element is Qatar
#    scroll element into view   //a[contains(text(),'Qatar')]

#    end of the page
    execute javascript   window.scrollTo(0,document.body.scrollHeight)
    sleep  5
#    back to start point
    execute javascript   window.scrollTo(0,-document.body.scrollHeight)


*** Keywords ***
