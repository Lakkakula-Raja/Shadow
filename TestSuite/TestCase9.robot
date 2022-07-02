*** Settings ***
Documentation       4G LTE Ipv4 and IPv6 test with HTTP protocol: APN set to "IPv4 and IPv6".
Resource        ../Res/DataSettings_kw.robot
Resource        ../Res/chrome_kw.robot
Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Set Selenium Speed    10s
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN

test with HTTP protocol: Calculate the Downlink speed
    Set Selenium Speed    10s
    open chrome
    search for http downlode
    ${time1}    Get Current Date
    Log To Console    ${time1}
    make downlode http
    ${time2}   Get Current Date
    Log To Console    ${time2}
    open new tab
    Sleep   2s
    ${time2}   Get Current Date
    ${time}     Subtract Date From Date     ${time2}        ${time1}
    ${res}      Evaluate    ${time} % 100
    Log To Console    10MB per ${res} sec