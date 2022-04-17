*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}    https://news.google.com/
*** Test Cases ***

TC_001 Use WaitCommands in Robot Framework
    open browser    ${var1}  Chrome
    maximize browser window
    set selenium timeout    10seconds
    wait until element contains    xpath://span[.='Get the Android app']    Get the Android app
    click link    xpath://span[.='Get the Android app']
