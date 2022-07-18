*** Settings ***
Documentation       4G LTE attach and connection, IPv6
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource

*** Test Cases ***
TEST CASE 14 : 4G LTE attach and connection, IPv6
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Log To Console    "Network set to 4G"
    Open DataSettings Application
    APN set to    IPv6
    Log To Console    "APN set to IPv6"
    Open chrome Application
    open url    https://test-ipv6.com/
    Check APN with      IPv6
    Log To Console    "APN set to IPv6 is checked"
