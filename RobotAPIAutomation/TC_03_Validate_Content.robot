*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${Base_URL}    https://gorest.co.in/
${StudentID}    2716
${expected_code}=    200

*** Test Cases ***
TC_01_Fetch_Student_details_by_ID
    create session    FetchData    ${Base_URL}
    ${response}=    GET On Session    FetchData    public/v2/users/${StudentID}
    log to console    ${response.status_code}
    ${actual_code}=  convert to string    ${response.status_code}
    should be equal    ${actual_code}    ${expected_code}

TC_02_Fetch_student_content_and_validate
    ${response}=    GET On Session    FetchData    public/v2/users
    #log to console    ${response.json()}
   # ${json_response}=    to json    ${response.content}
    @{first_name_list}=    get value from json    ${response.json()}    [0].name
    ${first_name}=    get from list    ${first_name_list}    0
    log to console    ${first_name}
    should be equal    ${first_name}    Hiranmaya Prajapat


