*** Settings ***
Library    SikuliLibrary

*** Variables ***

*** Test Cases ***
Tc_01 Click In
    start sikuli process
    Add Image Path    C:/Users/Global/Desktop/SikuliPics
    Click    Start
    Click In    CompleteMenu    Edge

Tc_02 Double Click In
    start sikuli process
    Add Image Path    C:/Users/Global/Desktop/SikuliPics
    Click    Start
    Right Click    Edge
    Double Click In    RightClickBox    NewWindow
    Press special key    ENTER
