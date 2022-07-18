*** Settings ***
Documentation       4G LTE Ipv4 and IPv6 test with HTTP protocol: APN set to "IPv4 and IPv6".
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource

*** Test Cases ***
TEST CASE 9 : 4G LTE Ipv4 and IPv6 test with HTTP protocol: APN set to "IPv4 and IPv6".
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Log To Console    "Network set to 4G"
    Open DataSettings Application
    APN set to    IPv4/IPv6
    Log To Console    "APN set to IPv4 and IPv6"
    Open chrome Application
    open url   https://fastest.fish/test-files
    make downlode http
    Log To Console    "Downloaded a file using HTTP protocol"