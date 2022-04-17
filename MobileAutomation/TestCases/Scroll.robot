*** Settings ***
Library    AppiumLibrary
Resource       ../../Resources/Library.robot

*** Keywords ***
#Scrolls from one element to another Key attributes for arbitrary elements are id and name.
Scroll_with_locators
    [Arguments]    ${startLocator}    ${endLocator}
    scroll    ${startLocator}    ${endLocator}
#Scrolls up to element
Scroll_Up
    [Arguments]    ${Locator}
    scroll up    ${Locator}
#Scrolls down to element
Scroll_Down
    [Arguments]    ${Locator}
    scroll down    ${Locator}

