*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser   http://newtours.demoaut.com/  chrome
    maximize browser window
    ${AlllkinksCount}=  get element count    xpath://a
    log to console   ${AlllkinksCount}

    @{linkItem}  create list
    :For  ${i}  IN RANGE  1  ${AlllkinksCount}+1
    \  ${linkText}=  get text   xpath:(//a)[${i}]
    \  log to console   ${LinkText}

#ForLoop1
#    :For  ${i}  IN RANGE  1  10
#    \  log to console   ${i}
#ForLoop2
#    :For  ${i}  IN  1 2 3 4 5 6 7 8
#    \  log to console  ${i}
#ForLoop3Withlist
#    @{items}  create list   1 2 3 4 5 6
#    :For  ${i}  IN  @{items}
#    \  log to console   ${i}

#ForLoop4
#    :For  ${i}  IN  Khoa Nhi QUyen Kieu THao
#    \  log to console  ${i}
#
#ForLoop5
#    @{items}  create list   Khoa Nhi QUyen Kieu THao
#    :For  ${i}  IN  @{items}
#    \  log to console  ${i}

#ForLood6
#    @{items}  create list   1  2  3  4  5  6
#    :For  ${i}  IN  ${items}
#    \  log to console   ${i}
#    \  exit for loop if  ${i}==3
*** Keywords ***
