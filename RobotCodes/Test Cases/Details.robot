*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource1.robot
Documentation    this file having testcase for testing ABC function
*** Variables ***


*** Test Cases ***
robot first test case    #details of the document
    [Documentation]    This test case is to check functionality of application
    [Timeout]    1 sec  Failed to execute  #message for timeout error         #timeout for execution
    ${res}=    Start browser and maximize    http://www.facebook.com    Chrome
    log    ${res}
    input text    //input[@id='email']    ${res}