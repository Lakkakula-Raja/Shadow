*** Settings ***
Documentation       4G LTE IPv6 test with HTTP protocol: APN set to "IPv6 only".
Resource        ../Res/userdef_kw.robot
#Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv6 only".
    Set Selenium Speed    10s
    Open DataSettings Application
    GoTo APN
    APN set to    IPv6
    Back From APN

test with HTTP protocol: Calculate the Downlink speed
    Set Selenium Speed    60s
    open chrome
    open new tab
    search for http downlode
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