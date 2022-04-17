*** Settings ***
Library    SikuliLibrary    mode=NEW

*** Variables ***

*** Test Cases ***
Tc01 Start Browser on Windows
    Start Sikuli Process
    Add Image Path    C:/Users/Global/Desktop/SikuliPics
    click    Start
    click    Edge
    Input Text    URlarea    http://www.amazon.com
