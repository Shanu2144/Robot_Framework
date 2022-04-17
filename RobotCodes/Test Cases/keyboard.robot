*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}    https://accounts.google.com/signup
*** Test Cases ***

TC_001 Use Keyboard in Robot Framework
    open browser    ${var1}  Chrome
    maximize browser window
    press key    name:firstName    Shashank
    press key    name:lastName    Kumar
