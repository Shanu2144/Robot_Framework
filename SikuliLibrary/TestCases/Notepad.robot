*** Settings ***
Library    SikuliLibrary    mode=NEW

*** Variables ***

*** Test Cases ***
Tc01 Start Browser on Windows
    Start Sikuli Process
    Add Image Path    C:/Users/Global/Desktop/SikuliPics
    Click    Start.png
    Input Text    SearchBox.png    Notepad++
    wait until screen contains    Notepad++    10    #wait until the notepad screen comes infornt of that
    Click    Notepad++
    Input Text    NotepadTextArea.png    HelloWorld
