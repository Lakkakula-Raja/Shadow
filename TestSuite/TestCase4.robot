*** Settings ***
Documentation  Calculate the Downlink speed with FTP protocol on 3G Network
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
3G Network
    Open DataSettings Application
    Network set to    3G/2G (auto connect)

Calculate the Downlink speed with FTP protocol
    Log To Console    "Calculate the Downlink speed with FTP protocol"

