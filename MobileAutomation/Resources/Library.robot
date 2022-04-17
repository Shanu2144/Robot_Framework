*** Settings ***

Library        AppiumLibrary
#Library    ../ExternalKeywords/UserKeywords.py
Library    ../ExternalKeywords/Locators.py
Library    ../TestData/ReadExcel.py

Documentation    Resources file for defining Keywords

*** Variables ***

${URL}  http://localhost:4723/wd/hub

#Logout
${LOGOUT}    id=com.clubautomation.club.automation.debug:id/tv_logout_action

#for login screen
${LOGIN_BUTTON}        id=com.clubautomation.club.automation.debug:id/buttonLogin
${USER_NAME_FIELD}    xpath=//android.widget.EditText [contains(@text,'Username')]


#for home screen
${CAPACITY_COUNTER_ClOSE_BUTTON}    id=com.clubautomation.club.automation.debug:id/closeDialog
${WHAT_ARE_YOU_LOOKING_FOR}          id=com.clubautomation.club.automation.debug:id/tv_looking_for
${Profile}  xpath=//android.widget.FrameLayout[@content-desc='Profile']
${Settings_icon}    id=com.clubautomation.club.automation.debug:id/iv_rightmost1


#for username & password
${username_textbox}      xpath=//android.widget.EditText [contains(@text,'USERNAME')]
${password_textbox}      xpath=//android.widget.EditText [contains(@text,'PASSWORD')]
&{dictionary1}   username=p01active  password=Test@123
&{dictionary2}  username=p04active  password=Test@123

#for bottom navigation


*** Keywords ***
User_open_application
    [Documentation]    This keyword is for opening the application
  #Open application  ${URL}  platformName=Android  platformVersion=11  deviceName=Nexus 6P API 30  appPackage=com.clubautomation.club.automation.debug  appActivity=com.clubautomation.mobileapp.ui.activity.StartActivity  automationName=uiautomator2    noReset=true
  Open application  ${URL}  platformName=Android  platformVersion=11   deviceName=RZ8M30MDZEK  appPackage=com.clubautomation.club.automation.debug  appActivity=com.clubautomation.mobileapp.ui.activity.StartActivity  automationName=uiautomator2    noReset=true


User_close_application
    [Documentation]    This keyword is for closing the application
    Close Application

Login_Button    #use this keyword when want to login in normal flow to discard capacity counter
    click element     ${LOGIN_BUTTON}
#    wait until page contains element    ${CAPACITY_COUNTER_ClOSE_BUTTON}    30
#    ${Alert}    run keyword and return status     wait until page contains element    ${CAPACITY_COUNTER_ClOSE_BUTTON}
#    run keyword if    '${Alert}' == 'True'      click element     ${CAPACITY_COUNTER_ClOSE_BUTTON}
    wait until page contains element    ${WHAT_ARE_YOU_LOOKING_FOR}       30


Read_Number_Of_Rows
    [Arguments]    ${sheetname}
    ${maxr}=    fetch_number_of_rows    ${sheetname}
    [Return]    ${maxr}

Read_Excel_Data_Of_Cell
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_cell_data    ${sheetname}    ${row}    ${cell}
    [Return]    ${celldata}

Read_Element_Locator
    [Arguments]    ${JsonPath}    ${Filepath}
    ${result}=    read_locator_from_json    ${JsonPath}     ${Filepath}
    [Return]    ${result}

Username & Password
    [Arguments]   ${USERNAME}    ${PASSWORD}
    input text  ${username_textbox}     ${USERNAME}
    input text  ${password_textbox}     ${PASSWORD}

Logout_If_UserLoggedIn    #this keyword logs out logged in user CHANGED
     ${Alert}  run keyword and return status    page should contain element    ${Profile}
     run keyword if     '${Alert}' == 'True'     click element        ${Profile}
     sleep    1
     ${Alert}  run keyword and return status    page should contain element    ${Settings_icon}
     run keyword if     '${Alert}' == 'True'     click element        ${Settings_icon}
     Swipe    317    1184    204    563
     ${test}  run keyword and return status    wait until page contains element    ${LOGOUT}
     run keyword if     '${test}' == 'True'     click element        ${LOGOUT}
     sleep    3

Capacity_counter_dialog    #this keyword closes capacity counter dialog
     ${Alert}    run keyword and return status     page should contain element    ${CAPACITY_COUNTER_ClOSE_BUTTON}
    run keyword if    '${Alert}' == 'True'      click element     ${CAPACITY_COUNTER_ClOSE_BUTTON}

Swipe_mobile    #this keyword is for swipe functionality
      Swipe    317    1184    204    563


Bottom navigation
  ${Explore_icon} =     Read_Element_Locator    Login.Explore.Explore_icon_xpath
  ${Home_icon}=          Read_Element_Locator    Login.Home.Home_icon_xpath
  ${profile_icon}=        Read_Element_Locator    Login.Profile.profile_icon_xpath

  page should contain element    ${Explore_icon}
  page should contain element     ${Home_icon}
  page should contain element    ${profile_icon}


