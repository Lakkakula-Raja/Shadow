*** Settings ***
Documentation  Simultaneous Data and voice call with WCMA bands.
Resource        ../Res/userdef_kw.robot
Test Teardown   Close Application

*** Test Cases ***
WCMA bands.
    Open DataSettings Application
    Network set to    3G/2G (auto connect)

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN

Simultaneous Data and voice call
    Open Dialer Application
    Enter The Number      8919111420
    Make A Call
    open chrome
    AppiumLibrary.Click Element    id=menu_button
    AppiumLibrary.Click Element     id=new_tab_menu_id
    AppiumLibrary.Input Text    id=search_box_text    Lakkakula raja
    AppiumLibrary.press keycode           66
    AppiumLibrary.Wait Until Page Contains    View Raja Lakkakula's profile on    timeout=60s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

