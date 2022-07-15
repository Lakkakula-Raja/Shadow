*** Settings ***
Documentation       4G LTE attach and connection, IPv6
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource

*** Test Cases ***
TEST CASE 14 : 4G LTE attach and connection, IPv6
    Common Functionality
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Open DataSettings Application
    APN set to    IPv6
    Open chrome
    Check APN with      IPv6
