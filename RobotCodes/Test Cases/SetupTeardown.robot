*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource2.robot
Documentation    this file having testcase for testing ABC function

*** Variables ***


*** Test Cases ***
robot first test case
    [Setup]    Start browser and maximize
    [Teardown]    Close browser window
    input text    id:email    Shashank
    input text    id:pass    Facebook@123

robot next test case
    [Setup]    Start browser and maximize
    [Teardown]    Close browser window
    click element    //*[text()='Create New Account']
