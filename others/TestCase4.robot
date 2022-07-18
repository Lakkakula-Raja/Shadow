*** Settings ***
Documentation  Calculate the Downlink speed with FTP protocol on 3G Network
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
3G Network
    Open DataSettings Application
    Network set to    3G/2G (auto connect)
APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN

Calculate the Downlink speed with FTP protocol
    Log To Console    "Calculate the Downlink speed with FTP protocol"

