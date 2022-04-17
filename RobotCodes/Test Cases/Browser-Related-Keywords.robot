*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}    https://accounts.google.com/signup
*** Test Cases ***

TC_001 Browser Realted Keywords
    open browser    ${var1}  Chrome
    maximize browser window
    go to    https://www.facebook.com
    ${url1}=    get location
    log to console    ${url1}
    go back
    ${url1}=    get location
    log to console    ${url1}




