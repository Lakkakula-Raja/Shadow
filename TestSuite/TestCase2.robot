*** Settings ***
Documentation  Calculate the Downlink speed with HTTP protocol on 3G Network  and  Calculate the uplink speed with HTTP protocol on 3G Network
Resource        ../Res/DataSettings_kw.robot
Test Teardown   Close Application

*** Test Cases ***
TEST CASE 2 - Calculate the Downlink speed with HTTP protocol on 3G Network
    Open DataSettings Application
    Network set to    3G/2G (auto connect)


TEST CASE 2 - Calculate the uplink speed with HTTP protocol on 3G Network
    Open DataSettings Application
    Network set to    3G/2G (auto connect)
