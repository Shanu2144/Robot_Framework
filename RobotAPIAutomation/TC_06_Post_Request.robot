*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${Base_url}=    https://gorest.co.in/

*** Test Cases ***
TC_01_Create new resource
    create session    AddData    ${Base_url}
    &{body}=    create dictionary    name=shashank    email=test@gmail.com    gender=male    status=active
    &{header}=    create dictionary    Content-type=application/json
    ${response}=    post on session    AddData    /public/v2/users    data=${body}    headers=${header}
    log to console    ${response.status_code}
    log to console    ${response.content}
    ${code}=    convert to string    ${response.status_code}
    should be equal    ${code}    201


