*** Settings ***
Documentation  Calculate the Downlink speed with HTTP protocol on 3G Network  and  Calculate the uplink speed with HTTP protocol on 3G Network
Resource        ../var/device_var.robot
Resource        ../Res/chrome_kw.robot
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
3G Network
    Open DataSettings Application
    Network set to    3G/2G (auto connect)

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN


Calculate the Downlink speed with HTTP protocol
    Set Selenium Speed    120s
    open chrome
    open new tab
    Sleep    30s
    search for http downlode
    Sleep    60s
    ${time1}    Get Current Date
    Log To Console    ${time1}
    make downlode http
    ${time2}   Get Current Date
    Log To Console    ${time2}
    Sleep   2s
    ${time2}   Get Current Date
    ${time}     Subtract Date From Date     ${time2}        ${time1}
    ${res}      Evaluate    ${time} % 100
    Log To Console    10MB per ${res} sec


