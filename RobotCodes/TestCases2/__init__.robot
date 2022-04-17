*** Settings ***
Library    SeleniumLibrary
Suite Setup    Before each test suite
Suite Teardown    After each test suite


*** Variables ***


*** Keywords ***
Before each test suite
    log     test suite started

After each test suite
    log    Test suite ended
    close all browsers