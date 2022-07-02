*** Settings ***
Documentation       4g and 3g
Resource        ../Res/DataSettings_kw.robot
*** Test Cases ***
4G LTE
    Open DataSettings Application
    Network set to    LTE/3G/2G (auto connect)

WCDMA bands
    Open DataSettings Application
    Network set to    3G/2G (auto connect)