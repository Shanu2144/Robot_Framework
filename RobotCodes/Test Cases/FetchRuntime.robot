*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.facebook.com/
${url1}    https://www.thetestingworld.com/testings/
${browser}    Chrome

*** Test Cases ***
#robot fetch test case for page title,text,value & selenium speed
#    open browser    ${url}    ${browser}
#    maximize browser window
#    ${pagetitle}=    get title
#    log    ${pagetitle}
#    ${value}    get value    xpath://button[@type='submit']
#    log    ${value}
#    ${Text}    get text    xpath://a[text()='Forgotten password?']
#    log    ${text}

#robot fetch test case for selected value & label in list/dropdown,also fetch list/dropdown items
#    open browser    ${url1}    ${browser}
#    maximize browser window
#    select from list by index  name:sex  1
#    ${val}    get selected list value    name:sex
#    log    ${val}
#    ${text}    get selected list label    name:sex
#    log    ${text}
#    ${allLables}    get list items    name:sex
#    log    ${allLables}

robot fetch test case for element attribute,element count,location & source
    open browser    ${url1}    ${browser}
    maximize browser window
    ${actualURL}    get location
    log    ${actualURL}
    ${PageHTML}    get source
    log    ${PageHTML}
    ${attr}    get element attribute    name:fld_username    class
    log    ${attr}
    ${cmt}    get element count    class:field
    log    ${cmt}
