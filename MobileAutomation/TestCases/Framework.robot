*** Settings ***

Library        AppiumLibrary
Resource       ../Resources/Library.robot
Resource       Scroll.robot
Resource       Swipe.robot

Test Setup       User_open_application
Test Teardown    User_close_application

Documentation   Test Cases for Packages module

*** Test Cases ***

TC_01- User purchased the package of private lessions
  [Tags]  Packages
  [Documentation]  This testcase will purchase the package of private lessions.
  ${username_text}=      Read_Element_Locator  Login.username_textbox_xpath    ../JsonFiles/Login.json
  ${paswword_text}=      Read_Element_Locator  Login.password_textbox_xpath    ../JsonFiles/Login.json
  ${package_link}=       Read_Element_Locator  Home.What_are_looking_for_packages_xpath    ../JsonFiles/Home.json
  ${package_filter}=     Read_Element_Locator  Packages.package_filter_id    ../Packages/Home.json
  ${package_loc}=        Read_Element_Locator  Packages.package_location_xpath    ../Packages/Home.json
#  ${package_slctloc}=    Read_Element_Locator  Login.Packages.package_slctloc_id
#  ${package_navup}=      Read_Element_Locator  Login.Packages.package_navigateup_xpath
#  ${package_category}=   Read_Element_Locator  Login.Packages.package_category_xpath
#  ${package_slctcatgry}  Read_Element_Locator  Login.Packages.package_slctcat_id
#  ${package_type}=       Read_Element_Locator  Login.Packages.package_privatetype_xpath
#  ${package_rslt}=       Read_Element_Locator  Login.Packages.package_showrslt_id
#  ${package_slctpkg}=    Read_Element_Locator  Login.Packages.package_slctpkg_id
#  ${package_buybutton}=  Read_Element_Locator  Login.Packages.package_buybutton_id
#  ${package_nextbtn}=    Read_Element_Locator  Login.Packages.package_nextbutton
#  ${chkout_paybtn}=      Read_Element_Locator  Login.Packages.package_paybutton_id
#  ${success_btn}=        Read_Element_Locator  Login.Packages.package_success_button
#  ${navigate_back}=      Read_Element_Locator  Login.CommonIcons.Back_chevron_xpath
#  ${logout}=             Read_Element_Locator  Login.logout_xpath
#  ${Home}=               Read_Element_Locator    Login.CommonIcons.Home
#  ${Explore}=            Read_Element_Locator    Login.CommonIcons.Explore
#  ${Profile}=            Read_Element_Locator    Login.Profile.Profile_icon_xpath

  wait until page contains element    xpath=${username_text}    25
  input text  xpath=${username_text}  P01Active
  input text  xpath=${paswword_text}  Test@123
  Login_Button
#  wait until page contains element    xpath=${package_link}     25
#  click element  xpath=${package_link}
#  wait until page contains element   ${Home}
#  page should contain element    ${Home}
#  page should contain element    ${Explore}
#  page should contain element    ${Profile}
#  wait until page contains element    id=${package_filter}    25
#  click element  id=${package_filter}
#  click element  xpath=${package_loc}
#  ${select_loc}=  get webelements  id=${package_slctloc}
#  click element  ${select_loc}[0]
#  click element  xpath=${package_navup}
#  wait until page contains element    xpath=${package_category}
#  click element  xpath=${package_category}
#  ${select_cat}=  get webelements  id=${package_slctcatgry}
#  click element  ${select_cat}[0]
#  click element  xpath=${package_navup}
#  wait until page contains element    xpath=${package_type}    25
#  click element  xpath=${package_type}
#  FOR  ${i}    IN RANGE    0    5
#      Swipe    15    600    15    200
#     ${el}    run keyword and return status  wait until page contains element  ${package_rslt}
#     log    ${el}
#     Run Keyword If    ${el}     Exit For Loop
#     ${i}    Set Variable    ${i}+1
#  END
#  click element  id=${package_rslt}
#  ${slct_pkg}=  get webelements  id=${package_slctpkg}
#  click element  ${slct_pkg}[0]
#  wait until page contains element    id=${package_buybutton}
#  click element  id=${package_buybutton}
#  sleep  2
#  FOR  ${j}    IN RANGE    0    5
#     Swipe    15    600    15    200
#    ${el}    run keyword and return status  wait until page contains element  ${chkout_paybtn}
#    log    ${el}
#     Run Keyword If    ${el}     Exit For Loop
#     ${j}    Set Variable    ${j}+1
#  END
#  click element  id=${chkout_paybtn}
#  sleep    5
#  wait until page contains element    id=${success_btn}    20
#  click element  id=${success_btn}
#  logout_if_userloggedin
#
#
#
#
