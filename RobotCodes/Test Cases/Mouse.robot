*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${var1}    https://news.google.com/
*** Test Cases ***

TC_001 Use Mouse in Robot Framework
    open browser    ${var1}  Chrome
    maximize browser window
    open context menu    xpath://a[text()='Headlines']
    #double click element    xpath://a[text()='Sign in']
    #mouse down    xpath://a[text()='Sign in']
    #mouse up    xpath://a[text()='Sign in']
    mouse over    class="ICsaqd"


