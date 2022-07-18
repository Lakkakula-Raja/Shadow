*** Settings ***
Documentation       4G LTE Ipv4 and IPv6 test with HTTP protocol: APN set to "IPv4 and IPv6".
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/FTP_kw.resource

*** Test Cases ***
TEST CASE 12 : 4G LTE Ipv4 and IPv6 test with HTTP protocol: APN set to "IPv4 and IPv6".
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Log To Console    "Network set to 4G"
    Open DataSettings Application
    APN set to    IPv4/IPv6
    Log To Console    "APN set to IPv4 and IPv6"
    Launch FTP RUSH App
    FTP download    manual_en.pdf
    Log To Console    "Download a file Using FTP Protocol"