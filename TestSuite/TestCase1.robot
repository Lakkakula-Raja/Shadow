*** Settings ***
Documentation       Calculate the Downlink speed via HTTP protocol on LTE Network
Resource        ../Res/userdef_kw.robot
Resource    ../var/userdef_var.robot
#Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

APN set to "IPv4 and IPv6"
    Open DataSettings Application
    GoTo APN
    APN set to    IPv4/IPv6
    Back From APN

Calculate the Downlink speed via HTTP protocol
    Set Selenium Speed    10s
    open chrome
    open new tab
    search for http downlode
    Sleep    20s
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
