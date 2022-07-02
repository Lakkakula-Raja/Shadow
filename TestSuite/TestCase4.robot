*** Settings ***
Documentation  Calculate the Downlink speed with FTP protocol on 3G Network
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
TEST CASE 4 - Calculate the Downlink speed with FTP protocol on 3G Network
    Open DataSettings Application
    Network set to    3G/2G (auto connect)

