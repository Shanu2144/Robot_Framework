*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Userkeywords.py

*** Variables ***
${url}  https://www.facebook.com/
${browser}    Chrome

*** Keywords ***
Start browser and maximize
    open browser    ${url}    ${browser}
    maximize browser window

Close browser window
    ${title}=    get title
    log    ${title}
    close browser
Create folder at runtime
    create_folder
    sub_create_folder
    log    "Task Done Successfully"
Create folder at runtime1
    [Arguments]    ${foldername}    ${subfoldername}
    create    ${foldername}
    subcreate    ${subfoldername}
    log    "Task Done Successfully"
concatenate username and password
    [Arguments]    ${username}    ${password}
    ${resultval}=    concatenate_two_values    ${username}    ${password}
    log    ${resultval}




