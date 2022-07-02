*** Settings ***
Documentation   Calculate the Downlink speed with FTP protocol on 4G Network
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
TEST CASE 3 - Calculate the Downlink speed with FTP protocol on 4G Network
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
