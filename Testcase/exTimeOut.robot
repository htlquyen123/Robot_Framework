*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
*** Test Cases ***
Test title
#   11   ${spead}=  get selenium speed
#    11  log to console   ${spead}
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    ${implicttime}=   get selenium implicit wait
    log to console  ${implicttime}
    set selenium implicit wait    10 seconds

    ${implicttime}=  get selenium implicit wait
    log to console   ${implicttime}
#  11  set selenium timeout  10 seconds
    wait until page contains   Register
#    - sleep each comment after 3 seconds
#    set selenium speed   3 seconds
    select radio button  Gender  M
    input text   id:FirstName1  Fname
    input text   id:LastName   Lname
    input text   id:Email     test@gmail.com
    input text   id:Password  123456
    input text   id:ConfirmPassword  123456
    click element   id:register-button
#    ${spead}=  get selenium speed
#    log to console   ${spead}
*** Keywords ***

