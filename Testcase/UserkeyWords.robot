*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Resource   ../Resource/userResource.robot


*** Variables ***
${url}  http://newtours.demoaut.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${PageTitle}=  launchbrowser   ${url}   ${browser}
    log to console  ${PageTitle}
    log   ${PageTitle}
    input text   name:userName   mercury
    input text   name:password   mercury


