*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***

TC_001 Browser Screenshot
    open browser    https://accounts.google.com/signup  Chrome
    maximize browser window
    input text  name:firstName  Shashank
    input text  name:lastName  Kumar
    capture page screenshot    TC1.png



