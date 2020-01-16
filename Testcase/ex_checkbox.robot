*** Settings ***
Documentation    Suite description
Library   Seleniumlibrary

*** Variables ***

${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Handle radio button and checkbox
    open browser  ${url}  ${browser}
    maximize browser window
    set selenium speed   2seconds
    select radio button   sex  Female
    select radio button   exp  5
#    Check box
    select checkbox   Black tea
    select checkbox   RedTea
    unselect checkbox   Black tea
# select the dropdown
    select from list by label    card_type   Visa
    sleep   3
    select from list by index   card_type   2
#    select from list by value   card_type  value

#List box
    select from list by value  selection   Tesst
    select from list by value   selection  Test2
    unselect from list by label   selection  Test2



*** Keywords ***
Provided precondition
