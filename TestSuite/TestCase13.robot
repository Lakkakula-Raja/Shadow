*** Settings ***
Documentation       4G LTE attach and connection, IPv4
Resource        ../Res/userdef_kw.robot
Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Set Selenium Speed    10s
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv4 only"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4
    Back From APN
attach and connection
    open chrome
    AppiumLibrary.Click Element    id=menu_button
    AppiumLibrary.Click Element     id=new_tab_menu_id
    AppiumLibrary.Input Text    id=search_box_text    https://test-ipv6.com/
    AppiumLibrary.press keycode           66
    AppiumLibrary.Wait Until Page Contains    Your IPv4 address on the public Internet appears to be     timeout=60s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots
