*** Settings ***
Documentation       Simultaneous Data and voice call with WCMA bands.
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource
Resource    ../Resource/apps/Diler_kw.resource

*** Test Cases ***
TEST CASE 7 : Simultaneous Data and voice call with WCMA bands.
    Common Functionality
    Open DataSettings Application
    Network set to    3G/2G (auto connect)
    Log To Console    "Network set To 3G"
    Open DataSettings Application
    APN set to    IPv4/IPv6
    Log To Console    "APN set to IPv4/IPv6"
    Open Dialer Application
    Make A Call to      8919111420
    open chrome Application
    open url    Raja Lakkakula
    Disconnect The Call
