*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
*** Test Cases ***
Test title

#Right click/ open open context menu  P12
    open browser  https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    open context menu   xpath://span[@class='context-menu-one btn btn-neutral']
    sleep  3

#  Double click action
    go to  http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element   //button[contains(text(),'Copy Text')]
    sleep  3
# Drag and Drop
    go to   http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop  //div[@id='box5']   //div[@id='box106']
    sleep   3
*** Keywords ***
Provided precondition
