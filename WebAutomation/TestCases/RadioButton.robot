*** Settings ***
Library    SeleniumLibrary
Resource       ../../Resources/Library.robot

*** Keywords ***
RadioButton_Selection
    [Arguments]    ${RadioButtonsLocator}    ${i}
    @{RadioButtons_List}=  get webelements  ${RadioButtonsLocator}  #get weblements will fetch all the RadioButtons list
   FOR    ${x}    IN    ${RadioButtons_List} #${x} is an variable to iterate in the list of radiobuttons
         click element        ${x}[${i}]    #'i'  is the desired index value of the RadioButtons which needs to be selected
   END