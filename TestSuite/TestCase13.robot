*** Settings ***
Documentation       4G LTE attach and connection, IPv4
Resource        ../Res/DataSettings_kw.robot
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
    Log To Console    "Dont know what to do"
