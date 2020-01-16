*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Resource   ../Resource/Registation.robot

*** Variables ***
${Browser}    chrome
${URL}  http://newtours.demoaut.com/

*** Test Cases ***
Registration Test
    open my browser   ${URL}  ${Browser}
    Click Register Link
    Enter FirstName    QUyen
    Enter LastName        HUynh
    Enter Phone     0123456
    Enter Email     test@gmail.com
    Enter Address1  13 TMA,Tan chan street
    Enter Address2  350 Le Duc Tho Street
    Enter City   TPHCM
    Enter State  0123
    Enter Postal code   5555
    Select Country   VIETNAM
    sleep  5s
    Enter User Name   abc
    Enter Password    12345678x@X
    Enter confirm Password     12345678x@X
    Click Submit
    Verify succesful Registration
    Close my browser

