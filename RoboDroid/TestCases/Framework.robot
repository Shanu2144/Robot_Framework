*** Settings ***


Library        AppiumLibrary
Resource       ../Resources/Library.robot


Test Setup       User_open_application
Test Teardown    User_close_application

Documentation   Test Cases for Buying a Package in CA Mobile App

*** Test Cases ***


TC_01- User purchased the package of private lessions
  [Tags]  Packages
  [Documentation]  This testcase will purchase the package of private lessions.
  #Read_Element_Locator is a User Defined Keyword in Library.robot
  #Login.username_textbox_xpath  is the path of KeyName of the Locator
  #../JsonFiles/Login.json  is the file path of Locators to be used
  ${username_text}=      Read_Element_Locator  Login.username_textbox_xpath    ../JsonFiles/Login.json
  ${password_text}=      Read_Element_Locator  Login.password_textbox_xpath    ../JsonFiles/Login.json
  ${package_link}=       Read_Element_Locator  Home.packages_xpath    ../JsonFiles/Home.json
  ${package_filter}=     Read_Element_Locator  Packages.package_filter_id    ../JsonFiles/Packages.json
  ${package_loc}=        Read_Element_Locator  Packages.package_location_xpath    ../JsonFiles/Packages.json
  ${package_slctloc}=    Read_Element_Locator  Packages.package_slctloc_id    ../JsonFiles/Packages.json
  ${package_navup}=      Read_Element_Locator  Packages.package_navigateup_xpath    ../JsonFiles/Packages.json
  ${package_category}=   Read_Element_Locator  Packages.package_category_xpath    ../JsonFiles/Packages.json
  ${package_slctcatgry}  Read_Element_Locator  Packages.package_slctcat_id    ../JsonFiles/Packages.json
  ${package_type}=       Read_Element_Locator  Packages.package_privatetype_xpath    ../JsonFiles/Packages.json
  ${package_rslt}=       Read_Element_Locator  Packages.package_showrslt_id    ../JsonFiles/Packages.json
  ${package_slctpkg}=    Read_Element_Locator  Packages.package_slctpkg_id    ../JsonFiles/Packages.json
  ${package_buybutton}=  Read_Element_Locator  Packages.package_buybutton_id    ../JsonFiles/Packages.json
  ${package_nextbtn}=    Read_Element_Locator  Packages.package_nextbutton    ../JsonFiles/Packages.json
  ${chkout_paybtn}=      Read_Element_Locator  Packages.package_paybutton_id    ../JsonFiles/Packages.json
  ${success_btn}=        Read_Element_Locator  Packages.package_success_button    ../JsonFiles/Packages.json
  ${navigate_back}=      Read_Element_Locator  CommonIcons.Back_chevron_xpath    ../JsonFiles/CommonIcons.json
  ${logout}=             Read_Element_Locator  Login.logout_xpath    ../JsonFiles/Login.json
  ${Home}=               Read_Element_Locator    CommonIcons.Home    ../JsonFiles/CommonIcons.json
  ${Explore}=            Read_Element_Locator    CommonIcons.Explore    ../JsonFiles/CommonIcons.json
  ${Profile}=            Read_Element_Locator    Home.Profile_icon_xpath    ../JsonFiles/Home.json


  wait until page contains element    xpath=${username_text}    25   #This Keyword will wait for the specified element defined for specific time
  Username & Password     ${dictionary1}[username]   ${dictionary1}[password]    #User Defined Keyword in Library.robot
  Login_Button    #User Defined Keyword in Library.robot
  wait until page contains element    xpath=${package_link}     25
  click element  xpath=${package_link}    # This keyword will click the specified element
  wait until page contains element   ${Home}
  page should contain element    ${Home}    # This keyword will validate the specified element/Locator
  page should contain element    ${Explore}
  page should contain element    ${Profile}
  wait until page contains element    id=${package_filter}    25
  click element  id=${package_filter}
  wait until page contains element    xpath=${package_loc}    20
  click element  xpath=${package_loc}
  wait until page contains element    id=${package_slctloc}    20
  ${select_loc}=  get webelements  id=${package_slctloc}    # get webelements will fetch the list of elements with same properties
  click element  ${select_loc}[0]
  click element  xpath=${package_navup}
  wait until page contains element    xpath=${package_category}    20
  click element  xpath=${package_category}
  ${select_cat}=  get webelements  id=${package_slctcatgry}
  click element  ${select_cat}[0]
  click element  xpath=${package_navup}
  wait until page contains element    xpath=${package_type}    25
  click element  xpath=${package_type}
  FOR  ${i}    IN RANGE    0    5    # This loop is used to get a specific element from the scrollable  list
      Swipe    15    600    15    200    # Swipe keyword helps to perform swipe operations for selected element
     ${el}    run keyword and return status  wait until page contains element  ${package_rslt}
     log    ${el}
     Run Keyword If    ${el}     Exit For Loop
     ${i}    Set Variable    ${i}+1
  END
  click element  id=${package_rslt}
  ${slct_pkg}=  get webelements  id=${package_slctpkg}
  click element  ${slct_pkg}[0]
  wait until page contains element    id=${package_buybutton}
  click element  id=${package_buybutton}
  FOR  ${j}    IN RANGE    0    5
     Swipe    15    600    15    200
    ${el}    run keyword and return status  wait until page contains element  ${chkout_paybtn}
    log    ${el}
     Run Keyword If    ${el}     Exit For Loop
     ${j}    Set Variable    ${j}+1
  END
  click element  id=${chkout_paybtn}
  wait until page contains element    id=${success_btn}    50
  click element  id=${success_btn}
  Logout_User     #User Defined Keyword in Library.robot





