*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Test Cases ***
#Handled Tabbed window
#    open browser   http://demo.automationtesting.in/Windows.html  chrome
#    click element   xpath://*[@id="Tabbed"]/a/button
##    select another tab
#    select window   title=Sakinalium | Home
#    click element  xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
#    sleep   3
#    close all browsers

Handle mutipleBrowserTest
    open browser   https://www.google.com/  chrome
    maximize browser window

    sleep  2
    open browser  https://www.bing.com/  chrome
    maximize browser window

    switch browser  1
    ${title1}=  get title
    log to console   ${title1}

    switch browser   2
    ${title2}=  get title
    log to console   ${title2}

    sleep  3
    close all browsers

*** Keywords ***
