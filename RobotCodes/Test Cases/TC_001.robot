*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://accounts.google.com/signup

*** Test Cases ***
TC_001 Browser Start and Close
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    set selenium speed    0.5seconds
    input text    name:firstName    Shashank
    input text    name:lastName    Kumar
    input text    name:Username    ShashankKumar
    input text    name:Passwd    Gmail123
    input text    name:ConfirmPasswd    Gmail123
    select checkbox    xpath://input[@id="i3"]

    #Close Browser


