*** Settings ***
Documentation       4G LTE attach and connection, IPv4
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource

*** Test Cases ***
TEST CASE 13 : 4G LTE attach and connection, IPv4
    Common Functionality
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Open DataSettings Application
    APN set to    IPv4
    Open chrome Application
    open url    https://test-ipv6.com/
    Check APN with      IPv4

