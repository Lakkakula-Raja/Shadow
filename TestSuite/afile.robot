*** Settings ***
Documentation       4G LTE IPv6 test with HTTP protocol: APN set to "IPv6 only".
Resource        ../Resource/apps/Settings_kw.resource
#Test Teardown   Close Application

*** Test Cases ***
TEST CASE:
    Common Functionality
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)
    APN set to    IPv6
    Close Application


