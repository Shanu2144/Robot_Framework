*** Settings ***
Resource    ../Resources/Resource2.robot

*** Variables ***
*** Test Cases ***
Test case in BDD
    Given Start browser and maximize
    When Create folder at runtime
    Then CONCATENATE USERNAME AND PASSWORD    hello    123

