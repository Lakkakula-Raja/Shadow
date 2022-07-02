*** Settings ***

Library     AppiumLibrary
Library     SeleniumLibrary
Library     OperatingSystem
Library     AutoItLibrary
Library     DateTime
Library     BuiltIn

Resource        ../var/chrome_var.robot
Resource        ../var/device_var.robot
Resource        ../Res/chrome_kw.robot
#Test Teardown   Close Application

*** Test Cases ***

Calculate the Downlink speed via HTTP protocol on LTE Network
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

TEST CASE 1 - Calculate the UPlink speed via HTTP protocol on LTE Network
    Log To Console    "konda"