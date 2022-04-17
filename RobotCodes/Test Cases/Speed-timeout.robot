*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://accounts.google.com/signup

*** Test Cases ***
TC_001 Browser Start and Close
    open browser    ${URL}    ${Browser}
    maximize browser window
    set selenium speed    0.5seconds
    ${speed}=    get selenium speed
    log to console    ${speed}
    input text    name:firstName    Shashank
    sleep    10seconds
    input text    name:lastName    Kumar
    input text    name:Username    ShashankKumar
    input text    name:Passwd    Gmail123
    input text    name:ConfirmPasswd    Gmail123
    ${default_T}=    get selenium implicit wait
    log to console    ${default_T}
    set browser implicit wait    20seconds
    ${default_T}=    get selenium implicit wait
    log to console    ${default_T}
    select checkbox    xpath://input[@id="i3"]
