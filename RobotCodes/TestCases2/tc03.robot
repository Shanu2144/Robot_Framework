*** Settings ***
Library    SeleniumLibrary
Default Tags    browser
Force Tags    all_tc


*** Variables ***
${url}  https://www.facebook.com/
${browser}    Chrome

*** Test Cases ***
robot first test case
    [Tags]    smoke
    open browser    ${url}    ${browser}
    maximize browser window

robot second test case
    [Tags]    sanity
    input text    id:email    shashank
    input text    id:pass    face@123

