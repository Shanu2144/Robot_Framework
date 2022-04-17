*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Library.robot

*** Test Cases ***
TC_01_Login
    [Documentation]    Login to Web Application

    ${Register_for_Classes}=    Read_Element_Locator    RegisterForClasses.Register_for_Classes    ../JsonFiles/RegisterForClasses.json
    ${Classes_list}=            Read_Element_Locator    RegisterForClasses.Classes_list            ../JsonFiles/RegisterForClasses.json
    ${Welcome_text}=            Read_Element_Locator    Home.Welcome_text                         ../JsonFiles/Home.json
    ${Logout}=                  Read_Element_Locator    Home.Logout                               ../JsonFiles/Home.json
    ${Register_for_Classes}=    Read_Element_Locator    Home.Register_for_Classes                 ../JsonFiles/Home.json
    ${Sign_up}=                 Read_Element_Locator    RegisterForClasses.Sign_up                ../JsonFiles/RegisterForClasses.json

    user_open_browser
    login
    page should contain element    ${Welcome_text}    20
    wait until page contains element    ${Register_for_Classes}    30
    Click Link    ${Register_for_Classes}
    ${Class_list}=  get webelements    ${Classes_list}
    FOR    ${i}    IN    ${Class_list}
    click element    ${i}[3]
    END
    click button    ${Sign_up}

    wait until page contains element    ${Logout}    20
    click element    ${Logout}
    user_close_browser





