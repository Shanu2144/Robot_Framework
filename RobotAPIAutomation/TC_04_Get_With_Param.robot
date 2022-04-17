*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${Base_URL}    https://ls.clubautomation.com/

*** Test Cases ***
TC_01 Validate Get Request with Parameters
    create session    Get_Param    ${Base_URL}
    &{param}=  create dictionary    userID=307366    access_token=QKEccmbA9BewyL0hU4EBGotHDT7toLNBpDOhNQWg53zAPFKwntDNQ
    ${response}=    GET On Session    Get_Param    /account_profiles   params=${param}
    log to console    ${response.status_code}
    log to console    ${response.content}
#    ${status_code}=    convert to string    ${response.status_code}
#    should be equal    ${status_code}    200
#    @{name_list}=    get value from json    ${response.json()}    data.[0].login
#    log to console    ${name_list}
#    ${name}=    get from list    ${name_list}    0
#    should be equal    ${name}    string
