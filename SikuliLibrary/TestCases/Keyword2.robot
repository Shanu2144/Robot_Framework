*** Settings ***
Library    SikuliLibrary

*** Variables ***
${Path}    C:/Users/Global/Desktop/SikuliPics

*** Test Cases ***
Tc_01 Start Browser On windows
    Start process and add path click on start    ${Path}
    Click    Edge
    Wait until screen contains    URLarea    10
    Input Text    URLarea    http://www.amazon.com
    Press Special Key    ENTER

Tc_02 Right click on browser and open properties
    Start process and add path click on start    ${Path}
    Right click    Edge
    Click In    RightClickBox    NewWindow

*** Keywords ***
Start process and add path click on start
    [Arguments]    ${Image_Path}
    start sikuli process
    Add Image Path    ${Image_Path}
    Click    Start