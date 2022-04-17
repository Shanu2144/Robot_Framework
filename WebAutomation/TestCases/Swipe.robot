*** Settings ***
Library    SeleniumLibrary
Resource       ../../Resources/Library.robot

*** Keywords ***
#start_x - x-coordinate at which to start
#start_y - y-coordinate at which to start
#offset_x - x-coordinate distance from start_x at which to stop
#offset_y - y-coordinate distance from start_y at which to stop
#duration - (optional) time to take the swipe
Swipe_by_coordinates
    [Arguments]    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}
    swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}


#start_x - x-percent at which to start
#start_y - y-percent at which to start
#end_x - x-percent distance from start_x at which to stop
#end_y - y-percent distance from start_y at which to stop

Swipe_by_percent
    [Arguments]    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}
    swipe by percent    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}