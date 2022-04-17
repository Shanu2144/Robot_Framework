*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserKeywords.robot

*** Variables ***
${var1}    https://www.facebook.com

*** Test Cases ***
TC_001 login logout functionality
    open browser    ${var1}    Chrome
    maximize browser window
#    click element    xpath://a[text()='Login']
    ${row}  Read Number of Rows    Sheet1
    FOR    ${i}    IN RANGE    1    ${row}+1
    ${username}    Read Excel Data of Cell    Sheet1    ${i}    1
    ${password}    Read Excel Data of Cell    Sheet1    ${i}    2
    input text    id:email    ${username}
    input text    id:pass    ${password}
    click button    xpath://button[@type='submit']
    sleep    2
    END
