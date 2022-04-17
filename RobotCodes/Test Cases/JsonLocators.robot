*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Locators.py


*** Variables ***
${url1}    https://www.thetestingworld.com/testings/
${browser}    Chrome

*** Test Cases ***
Robot First Test Case
    [Tags]    Json_test_case
    open browser    ${url1}    ${browser}
    maximize browser window
    ${username}=    Read Element Locator    Registration.username_textbox_name
    input text    name:${username}    Testing
    ${password}=    Read Element Locator    Registration.password_textbox_name
    input text    name:${password}    123456
    close all browsers

*** Keywords ***
Read Element Locator
    [Arguments]    ${JsonPath}
    ${result}=    read_locator_from_json    ${JsonPath}
    [Return]        ${result}