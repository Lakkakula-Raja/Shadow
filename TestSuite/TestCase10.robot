*** Settings ***
Documentation       4G LTE IPv6 test with FTP protocol: APN set to "IPv6 only"
Resource        ../Res/userdef_kw.robot
Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Set Selenium Speed    10s
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv6 only"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv6
    Back From APN

test with FTP protocol: Calculate the Downlink speed
    Log To Console    "Working on it. taking from 3"