*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${Base_URL}    https://reqres.in/

*** Test Cases ***
TC_01 Validate Delete Request
    create session    AppAcess    ${Base_URL}
    ${response}=    DELETE On Session    AppAcess    api/users/2
    log to console    ${response.status_code}
    log to console    ${response.content}
    ${code}=    convert to string    ${response.status_code}
    should be equal    ${code}    204
    @{status_list}=    get value from json    ${response.json()}    data.id
    ${status}=    get from list    ${status_list}    0
#    should be equal    ${status}    3476

