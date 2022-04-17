*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}    https://news.google.com/
*** Test Cases ***

TC_001 Execute JavaScript in Selenium
    open browser    ${var1}  Chrome
    maximize browser window
    execute javascript    window.scrollTo(0,1000)
