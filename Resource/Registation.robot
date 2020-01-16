*** Settings ***
Documentation    Suite description
Library   SeleniumLibrary
Variables   ../PO/Locator.py


*** Keywords ***
Open my browser
    [Arguments]   ${URL}  ${Browser}
    open browser   ${URL}  ${Browser}
    maximize browser window

Click Register Link
    click link    ${link_Register}

Enter FirstName
    [Arguments]    ${firstName}
    input text    ${txt_Fname}   ${firstName}

Enter LastName
    [Arguments]   ${Lname}
    input text   ${txt_Lname}  ${Lname}
Enter Phone
    [Arguments]   ${phone}
    input text  ${txt_Phone}  ${phone}

Enter Email
    [Arguments]    ${Email}
    input text   ${txt_email}  ${Email}

Enter Address1
    [Arguments]   ${address1}
    input text   ${txt_add1}  ${address1}

Enter Address2
    [Arguments]   ${address2}
    input text   ${txt_add2}  ${address2}
Enter City
    [Arguments]   ${City}
    input text   ${txt_city}  ${City}
Enter State
    [Arguments]    ${state}
    input text   ${txt_state}  ${state}

Enter Postal code
    [Arguments]   ${PostCode}
    input text   ${txt_Postcode}  ${PostCode}

Select Country
    [Arguments]     ${country}
    select from list by label   ${drp_Country}  ${country}

Enter User Name
    [Arguments]   ${UserName}
    wait until page contains element  ${txt_UserName}
    input text   ${txt_UserName}  ${UserName}

Enter Password
    [Arguments]    ${pws}
    input text      ${txt_Pws}  ${pws}

Enter confirm Password
    [Arguments]   ${ConfirmPws}
    input text  ${txt_conformPw}  ${ConfirmPws}

Click Submit
    click link    ${btn_submit}
Verify succesful Registration
    page should contain

Close my browser
    close all browsers


