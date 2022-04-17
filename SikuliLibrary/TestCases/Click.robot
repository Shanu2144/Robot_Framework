*** Settings ***
Library    SikuliLibrary

*** Variables ***

*** Test Cases ***
Tc_01 Right click and Double click
    start sikuli process
    Add Image Path    C:/Users/Global/Desktop/SikuliPics
    Click    Start
    #Right Click    Edge
    Double Click    Edge
    Input Text    URLarea    https://www.amazon.com

Tc_02 combine all of these
    start sikuli process
    Add Image Path    C:/Users/Global/Desktop/SikuliPics
    Right Click    Bar
    Click    ShowD
    Double Click    Goggle