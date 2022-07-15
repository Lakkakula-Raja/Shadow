*** Settings ***
Documentation       Simultaneous Data and voice call with LTE bands
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource
Resource    ../Resource/apps/Diler_kw.resource

*** Test Cases ***
TEST CASE 20 : Simultaneous Data and voice call with LTE bands
    Common Functionality
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Log To Console    "Network set To 4G"
    Open DataSettings Application
    APN set to    IPv4/IPv6
    Log To Console    "APN set to IPv4/IPv6"
    Open Dialer Application
    Make A Call to      8919111420
    Log To Console    "call started"
    Open Dialer Application
    Make A Call to      8919111420
    open chrome Application
    open url    Raja Lakkakula
    Open Dialer Application
    Disconnect The Call

