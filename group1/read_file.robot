*** Settings ***
Library  csv_library.py

*** Test Cases ***
Try to write dictionary data to csv file
    [Tags]  Dev
    &{user_info}=  Create dictionary
    ...  email= znepjune@gmail.com
    ...  mobile_no= 091234567
    @{all data}=   Create List
    ...  ${user_info}
    ...  ${user_info}
    Write Data  ${all data}

Try to read from user.csv_library with for loop
    [Tags]  testing
    ${users} =  Read Data  user.csv
    :FOR  ${data}  IN  @{users}
    \   Log to console  ${data[0]} = ${data[1]}

Try to read from user.csv_library
    ${users} =  Read Data  user.csv
    Log to console  User = ${users [0][0]} 
    Log to console  Password = ${users [0][1]} 