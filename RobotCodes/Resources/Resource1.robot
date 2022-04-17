*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${url}  https://www.facebook.com/
#${browser}    Chrome

*** Keywords ***

#without arugumetns
#Start browser and maximize
#    open browser    ${url}    ${browser}
#    maximize browser window

    #with arguments
Start browser and maximize
    [Arguments]    ${userURL}    ${InputBrowser}
    open browser    ${userURL}    ${InputBrowser}
    maximize browser window

    ${title}=    get title
    [Return]    ${title}
