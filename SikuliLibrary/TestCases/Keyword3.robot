*** Settings ***
Library    SikuliLibrary

*** Variables ***
${Path}    C:/Users/Global/Desktop/SikuliPics

*** Test Cases ***
Tc_01 Start Browser On windows
    ${r}=    Start process and add path click on start    ${Path}
    log to console    ${r}
    Click    Edge
    Wait until screen contains    URLarea    10
    Input Text    URLarea    http://www.amazon.com
    Press Special Key    ENTER

Tc_02 Right click on browser and open properties
    ${r}=    Start process and add path click on start    ${Path}
    log to console    ${r}
    Right click    Edge
    Click In    RightClickBox    NewWindow

*** Keywords ***
Start process and add path click on start
    [Arguments]    ${Image_Path}
    start sikuli process
    Add Image Path    ${Image_Path}
    Click    Start
    ${Image_Text}=    Get Text    Edge
    [Return]    ${Image_Text}