*** Settings ***
Library  Collections

*** Variables ***
&{user_info_1}  email=znepjune@gmail.com  mobile_no=0921459951

*** Test cases ***
Test 1  
    Fill in customer information  ${user_info_1}

*** Keywords ***
Fill in customer information
    [Arguments]     ${user}
    Log to console  ${user.email}
    Log to console  ${user.mobile_no}