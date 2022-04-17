*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource2.robot


*** Variables ***
${url}  https://www.facebook.com/
${url1}    https://www.thetestingworld.com/testings/
${url3}    https://www.redhat.com/
${browser}    Chrome

*** Test Cases ***
#robot test case without arguments and return value
#    Create folder at runtime
#    open browser    ${url3}    ${browser}
#    maximize browser window

#robot test case with arguments but no return value
#    Create folder at runtime1    linux    ubuntu
#    open browser    ${url3}    ${browser}
#    maximize browser window

robot test case with argument and return value as well
    concatenate username and password    amazon    linux
    open browser    ${url3}    ${browser}
    maximize browser window