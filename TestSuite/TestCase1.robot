*** Settings ***
Documentation       Calculate the Downlink speed via HTTP protocol on LTE Network
Resource        ../var/device_var.robot
Resource        ../Res/chrome_kw.robot
Resource        ../Res/DataSettings_kw.robot
#Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
Calculate the Downlink speed via HTTP protocol
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

Calculate the UPlink speed via HTTP protocol
    Log To Console    "not need Calculate the UPlink speed via HTTP protocol"