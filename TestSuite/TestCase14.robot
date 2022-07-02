*** Settings ***
Documentation       4G LTE attach and connection, IPv6
Resource        ../Res/DataSettings_kw.robot
Resource        ../Res/apn_kw.robot
Resource        ../var/chrome_var.robot
Resource        ../Res/chrome_kw.robot
#Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv6 only".
    Set Selenium Speed    10s
    Open DataSettings Application
    GoTo APN
    APN set to    IPv6
    Back From APN

attach and connection
    Log To Console    "Dont know what to do"