*** Settings ***
Documentation       4G LTE IPv4 test with HTTP protocol: APN set to "IPv4 only".
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/FTP_kw.resource

*** Test Cases ***
TEST CASE 11 : 4G LTE IPv4 test with HTTP protocol: APN set to "IPv4 only".
    Common Functionality
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Open DataSettings Application
    APN set to    IPv4
    Launch FTP RUSH App
    FTP download    manual_en.pdf
    Log To Console    "FTP Download"