*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}    https://news.google.com/
${var2}    https://accounts.google.com/signup
*** Test Cases ***

TC_001 Use Multi-window Commands in Robot Framework
    open browser    ${var1}  Chrome
    maximize browser window
    open browser    ${var2}  Chrome
    maximize browser window
    switch browser    1
    ${url1}    get location
    log to console    ${url1}
    click link    //a[.='Sign in']
    switch browser    2
    ${url2}    get location
    log to console    ${url2}
    input text    name:firstName    Shashank
    #close all browsers

