*** Settings ***
Library    AppiumLibrary
Resource       ../Resources/Library.robot

*** Keywords ***
CheckBox_Selection
     [Arguments]    ${CheckBoxsLocator}    ${i}
    @{CheckBoxs_List}=  get webelements  ${CheckBoxsLocator}  #get weblements will fetch all the RadioButtons list
   FOR    ${x}    IN    ${CheckBoxs_List} #${x} is an variable to iterate in the list of checkboxes
         click element        ${x}[${i}]    #'i'  is the desired index value of the checkboxes which needs to be selected
   END