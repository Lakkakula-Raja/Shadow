*** Settings ***
Documentation       4G LTE Ipv4 and IPv6 test with FTP protocol: APN set to "IPv4 and IPv6".
Resource        ../Res/userdef_kw.robot
Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Set Selenium Speed    10s
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN

test with FTP protocol: Calculate the Downlink speed
    Log To Console    "Working on it. taking from 3"