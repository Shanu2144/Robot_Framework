*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Locators.py
Library    ../TestData/ReadExcel.py

*** Variables ***
${URL}    https://ls.clubautomation.com/

${Browser}    chrome

${Logout}    //a[@class='logout']

*** Keywords ***
user_open_browser
    open browser    ${URL}    ${Browser}
    maximize browser window

user_close_browser
    close browser

login
    input text    id:login    skumar04
    input password    id:password    Test@123
    click button    id:loginButton

Read_Number_Of_Rows
    [Arguments]    ${sheetname}
    ${maxr}=    fetch_number_of_rows    ${sheetname}
    [Return]    ${maxr}

Read_Excel_Data_Of_Cell
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_cell_data    ${sheetname}    ${row}    ${cell}
    [Return]    ${celldata}

Read_Element_Locator
    [Arguments]    ${JsonPath}    ${Filepath}
    ${result}=    read_locator_from_json    ${JsonPath}     ${Filepath}
    [Return]    ${result}
