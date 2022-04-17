*** Settings ***
Library    SeleniumLibrary
Resource       ../../Resources/Library.robot

*** Keywords ***

ScreenShot
    [Arguments]    ${DirectoryLocation}    ${FileLocation}
    create directory    ${DirectoryLocation}    # it creates directory in the provided location path
    capture page screenshot    ${FileLocation}    ## it Stores the screenshots in PNG format  in the provided Directory
# e.g. create directory    TestCases/screenshots
#e.g. capture page screenshot    Test Cases/screenshots/TC_08.png