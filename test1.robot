*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${GOOGLE URL}    http://nervgh.github.io/pages/angular-file-upload/examples/simple/

*** Keywords ***
Open Angular Browser
    Open BROWSER    ${GOOGLE URL}  ${BROWSER}

Select file
    [Arguments]     ${filename}
    Choose File     xpath://div/div[2]/div[1]/input[2]  ${CURDIR}/${filename}

Check file
    Page Should Contain Element     xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr    limit=3

Upload file
    [Arguments]     ${order no}
    Click Element   //*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[${order no}]/td[5]/button[1]/span 

Upload should be success
    Wait Until Page Contains Element    xpath://div[@style="width: 100%;"]

*** Test cases ***
Upload file to Angular file upload
    Open Angular Browser
    Select file     image1.jpg     
    Select file     image2.jpg
    Select file     image3.jpg
    Check file
    
    Upload file     1
    Upload file     2      
    Upload file     3
    Upload should be success