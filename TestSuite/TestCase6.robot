*** Settings ***
Documentation  Bidirectional data transfer with WCDMA bands
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
TEST CASE 6 - Calculate the Uplink speed with FTP protocol on 3G Network
    Open DataSettings Application
    Network set to    3G/2G (auto connect)
