*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${BROWSER}    Chrome
${url}    https://www.thetestingworld.com/testings/
*** Test Cases ***
Test case
    Open Browser  ${url}        ${BROWSER}
    Input Text    //input[@name="fld_username"]    Testing
    Input Text    //input[@name="fld_email"]    testing2world.com
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_cpassword"]    ***
    Click Link    xpath=(//a[@href="#"])[5]
    Input Text    //input[@name="phone"]    123456