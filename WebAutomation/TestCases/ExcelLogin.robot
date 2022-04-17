*** Settings ***
Resource    ../Resources/Library.robot

*** Variables ***

*** Test Cases ***
Excel_Login_For_Website
    user_open_browser

    ${row}=    Read Number of Rows    Sheet1

    FOR    ${i}    IN RANGE    1    ${row}+1
    ${username}=    Read Excel Data of Cell    Sheet1    ${i}    1
    ${password}=    Read Excel Data of Cell    Sheet1    ${i}    2
    input text    id:login    ${username}
    input text    id:password    ${password}
    click button    id:loginButton
    sleep    5seconds
    click element    ${Logout}
    END
    user_close_browser