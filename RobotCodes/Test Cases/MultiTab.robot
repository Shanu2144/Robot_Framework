*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${var1}    https://news.google.com/

*** Test Cases ***
TC_001 Use Multi-Tab Commands in Robot Framework
    open browser    ${var1}  Chrome
    maximize browser window
    click element    xpath://span[.='Get the Android app']
    switch window    1
    ${url1}=    get location
    log to console    ${url1}
    switch window    2
    ${url2}=    get location
    log to console    ${url2}