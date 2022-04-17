*** Settings ***
Library    SikuliLibrary

*** Variables ***

*** Test Cases ***
Tc_01 Start Browser On windows
    Start process and add path click on start
    Click    Edge
    Wait until screen contains    URLarea    10
    Input Text    URLarea    http://www.amazon.com
    Press Special Key    ENTER

Tc_02 Right click on browser and open properties
    Start process and add path click on start
    Right click    Edge
    Click In    RightClickBox    NewWindow

*** Keywords ***
Start process and add path click on start
    start sikuli process
    Add Image Path    C:/Users/Global/Desktop/SikuliPics
    Click    Start