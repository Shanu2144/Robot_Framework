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
    [Tags]    end_to_end
    input text    name:email    shashank

