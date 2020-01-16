*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Resource   ../Resource/LoginPO.robot

*** Variables ***
${Browser}  chrome
${URL}  http://newtours.demoaut.com/
${User}  Test
${pws}  passw

*** Test Cases ***
TC01
    Open my browser  ${URL}  ${Browser}
    Enter Username   ${User}
    Enter password   ${pws}
    Click login button
    sleep  5
    verify succesfull Login
    close my browsers



