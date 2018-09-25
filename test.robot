*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${GOOGLE URL}    https://rdserver.rd.go.th/publish/index.php?page=taxonline

*** Keywords ***
Open page tax Online page   
    Open BROWSER    ${GOOGLE URL}  ${BROWSER}  

Click to open Compatibility View
    Select Frame    xpath://*[@id="lightboxdialog"]/p/iframe
    Click Link      คลิก

Close popup
    Select Window
    Click Element   xpath://*[@id="lightboxdialog"]/button

*** Test cases ***
Open Tax Online
    Open page tax Online page   
    Click to open Compatibility View
    Close popup
