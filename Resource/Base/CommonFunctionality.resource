*** Settings ***
Documentation       this file handles browser,resorses to cteate keywords
Library     AppiumLibrary
Library     SeleniumLibrary
Library     OperatingSystem
Library     AutoItLibrary
Library     DateTime
Library     BuiltIn
Library     Collections
*** Variables ***
#set your device name
${deviceName}     RZ8T105EFQE

*** Keywords ***
Common Functionality
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
