*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary


*** Test Cases ***
Test title
    open browser   http://testautomationpractice.blogspot.com/   chrome
    maximize browser window
#    count the row number
    ${rows}=  get element count   xpath://table[@name='BookTable']/tbody/tr
#    count the cols number
    ${cols}=  get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console  ${rows}
    log to console  ${cols}

#    get text   of the row
    ${data}=  get text    xpath://table[@name='BookTable']/tbody/tr[3]/td[2]
    log to console   ${data}

#colume number 2 should be Author
    table column should contain   xpath://table[@name='BookTable']  2  Author
#    row number 4 should be Learn JS
    table row should contain    xpath://table[@name='BookTable']  4  Learn JS
#Coulm 4, row 2 should be Anismes
    table cell should contain   xpath://table[@name='BookTable']   4  2  Animesh
#    header should be Bookname
    table header should contain   xpath://table[@name='BookTable']  BookName

    close browser

*** Keywords ***

