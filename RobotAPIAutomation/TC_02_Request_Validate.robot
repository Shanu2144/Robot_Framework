*** Settings ***
Library    RequestsLibrary

*** Variables ***
${Base_URL}    https://gorest.co.in/
${StudentID}    2587
${expected_code}=    200

*** Test Cases ***
TC_01_Fetch_Student_details_by_ID
    create session    FetchData    ${Base_URL}
    ${response}=    GET On Session    FetchData    public/v2/users/${StudentID}
    log to console    ${response.status_code}
    ${actual_code}=  convert to string    ${response.status_code}
    should be equal    ${actual_code}    ${expected_code}

