*** Settings ***
Documentation       4G LTE IPv6 test with HTTP protocol: APN set to "IPv6 only".
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource

*** Test Cases ***
TEST CASE 7 : 4G LTE IPv6 test with HTTP protocol: APN set to "IPv6 only".
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Log To Console    "Network set to 4G"
    Open DataSettings Application
    APN set to    IPv6
    Log To Console    "APN set to IPV6"
    Open chrome Application
    open url   https://fastest.fish/test-files
    make downlode http
    Log To Console    "Downloaded a file using HTTP protocol"
