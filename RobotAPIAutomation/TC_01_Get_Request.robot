*** Settings ***
Library    RequestsLibrary

*** Variables ***
${Base_URL}    https://ls.clubautomation.com/

*** Test Cases ***
TC_01_Get_Request
    create session    Get_Student_Details    ${Base_URL}
    ${response}=    GET On Session    Get_Student_Details    /account_balance
    log to console    ${response.status_code}
    ${response1}=    ${response.content}
    ${json_response}=    ${response1.json()}
    log to console    ${json_response}

