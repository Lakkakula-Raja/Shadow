*** Settings ***
Documentation       4G LTE IPv4 test with HTTP protocol: APN set to "IPv4 only".
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource

*** Test Cases ***
TEST CASE 8 : 4G LTE IPv4 test with HTTP protocol: APN set to "IPv4 only".
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Log To Console    "Network set to 4G"
    Open DataSettings Application
    APN set to    IPv4
    Log To Console    "APN set to IPV4"
    Open chrome Application
    open url   https://fastest.fish/test-files
    make downlode http
    Log To Console    "Downloaded a file using HTTP protocol"