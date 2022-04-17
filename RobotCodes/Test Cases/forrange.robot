*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
Testcase3
    @{list}    create list    hello how are you 12 23 34 45 56
    FOR    ${i}    IN    @{list}
    log to console    ${i}
    END
