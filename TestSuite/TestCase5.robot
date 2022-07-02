*** Settings ***
Documentation   Calculate the Uplink speed with FTP protocol on a 4G Network
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
4G LTE
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

Calculate the Uplink speed with FTP protocol
    Log To Console    "Calculate the Uplink speed with FTP protocol"


