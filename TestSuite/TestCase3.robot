*** Settings ***
Documentation   Calculate the Downlink speed with FTP protocol on 4G Network
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

Calculate the Downlink speed with FTP protocol
    Log To Console    "Calculate the Downlink speed with FTP protocol "
