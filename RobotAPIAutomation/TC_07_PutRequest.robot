*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${Base_url}=    https://gorest.co.in/

*** Test Cases ***
TC_01_Update resource
    create session    AddData    ${Base_url}
    &{body}=    create dictionary    id=1100    name=shashank    email=test@gmail.com    gender=male    status=active
    &{header}=    create dictionary    Content-type=application/json
    ${response}=    PUT On Session    AddData    /public/v2/users    data=${body}    headers=${header}
    log to console    ${response.status_code}
    log to console    ${response.content}
    ${response1}=    GET On Session    AddData    /public/v2/users/1100
    log to console    ${response1.content}



