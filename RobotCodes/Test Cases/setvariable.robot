*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
TC_002 Varibale Test
    ${var}=    set variable    log to console
    run keyword    ${var}    gogle.com
    ${var2}=    set variable    Yes
    run keyword if    '${var2}'=='Yes'    log to console    Your are great
    run keyword if    '${var2}'=='No'    log to console    Your are supergreat
