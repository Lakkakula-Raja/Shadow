*** Settings ***
Documentation   Bidirectional data transfer with LTE bands
Resource        ../Res/userdef_kw.robot
Test Teardown   Close Application

*** Test Cases ***
LTE bands
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN

Bidirectional data transfer
    Log To Console    "sending and reciving Data at which ipv4/ipv6"

