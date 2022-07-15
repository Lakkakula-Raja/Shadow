*** Settings ***
Documentation       4G LTE IPv4 test with HTTP protocol: APN set to "IPv4 only".
Resource    ../Resource/apps/Settings_kw.resource
Resource    ../Resource/apps/Chrome_kw.resource

*** Test Cases ***
TEST CASE 8 : 4G LTE IPv4 test with HTTP protocol: APN set to "IPv4 only".
    Common Functionality
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    Open DataSettings Application
    APN set to    IPv4
    Set Selenium Speed    60s
    Open chrome Application
    open url   https://fastest.fish/test-files
    Sleep    30s
    ${time1}    Get Current Date
    Log To Console    ${time1}
    make downlode http
    ${time2}   Get Current Date
    Log To Console    ${time2}
    ${time2}   Get Current Date
    ${time}     Subtract Date From Date     ${time2}        ${time1}
    ${res}      Evaluate    ${time} % 100
    Log To Console    10MB per ${res} sec

    ${time2}   Get Current Date
    ${time}     Subtract Date From Date     ${time2}        ${time1}
    ${res}      Evaluate    ${time} % 100
    Log To Console    10MB per ${res} sec