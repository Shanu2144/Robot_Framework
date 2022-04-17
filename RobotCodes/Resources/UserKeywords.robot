*** Settings ***
Library    ../TestData/ReadData.py

*** Keywords ***
Read Number of Rows
    [Arguments]    ${Sheetname}
    ${maxr}=    fetch_number_of_rows    ${Sheetname}
    [Return]    ${maxr}

Read Excel Data of Cell
    [Arguments]    ${Sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_cell_data    ${Sheetname}    ${row}    ${cell}
    [Return]    ${celldata}
