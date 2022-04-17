*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource1.robot

*** Variables ***


*** Test Cases ***
robot first test case
#    #without arguments
#    Start browser and maximize
#    input text    //input[@id='email']    Shashank

    #with arguments
    ${res}=    Start browser and maximize    http://www.facebook.com    Chrome
    log    ${res}
    input text    //input[@id='email']    ${res}



