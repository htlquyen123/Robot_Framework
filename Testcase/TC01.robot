*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Login Test
    [Tags]  login
     open browser  ${url}  ${browser}
     maximize browser window
     title should be   nopCommerce demo store. Login
     LoginToApplication
     close browser
TC2
    [Tags]   samily
    log to console
*** Keywords ***
LoginToApplication
#     click link   //a[@class='ico-login']
#     ${"email_Txt"}  set variable   id=Email
#     element should be visible  ${"email_Txt"}
#     element should be enabled  ${"email_Txt"}
#
#     input text   ${"email_Txt"}  test@gmail.com
#     sleep   5
#     clear element text   ${"email_Txt"}
#     sleep  3


#     input text   //input[@id='Email']   test@gmail.com
#     input password   //input[@id='Password']   123456
#     click element   //input[@class='button-1 login-button']