*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${var1}    https://news.google.com/

*** Test Cases ***
TC_001 Use Validations Commands in Robot Framework
    open browser    ${var1}  Chrome
    maximize browser window

#    page should contain    Top stories
#    click element    //*[text()='Top stories']

#    page should not contain    Top stories
#    click element    //*[text()='Top stories']

    click element    //a[text()='Sign in']
    page should contain textfield    //*[@id="identifierId"]
    input text    //*[@id="identifierId"]    ShashankKumar


