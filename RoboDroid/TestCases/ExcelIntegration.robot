*** Settings ***

Library        AppiumLibrary
Resource       ../Resources/Library.robot


Test Setup       User_open_application
Test Teardown    User_close_application

Documentation   Test Cases for Login from Excel

*** Test Cases ***

TC_01- User should be able to login with multiple user
  [Tags]  Login
  [Documentation]  This Test case with fetch user & password for multiple users from excel File
  ${username_text}=      Read_Element_Locator  Login.username_textbox_xpath    ../JsonFiles/Login.json
  ${password_text}=      Read_Element_Locator  Login.password_textbox_xpath    ../JsonFiles/Login.json


  ${row}  Read_Number_Of_Rows    validlogin    ../TestData/TestData.xlsx
    FOR    ${i}    IN RANGE    1    ${row}+1
    ${username}    Read_Excel_Data_Of_Cell    validlogin    ${i}    1    ../TestData/TestData.xlsx
    ${password}    Read_Excel_Data_Of_Cell    validlogin    ${i}    2    ../TestData/TestData.xlsx
    input text   ${username_text}   ${username}
    input text   ${password_text}   ${password}
    Login_Button
    Logout_User
  END

