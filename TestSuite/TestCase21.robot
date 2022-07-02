*** Settings ***
Documentation  Bidirectional data transfer with WCDMA bands
Resource        ../Res/message_kw.robot
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
WCDMA bands
    Open DataSettings Application
    Network set to    3G/2G (auto connect)

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN

Bidirectional data transfer
    Log To Console    "sending and reciving Data at which ipv4/ipv6"

