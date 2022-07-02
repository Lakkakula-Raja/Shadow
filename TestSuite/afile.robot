* Settings *
Resource    ../Res/Android/resCalender.robot
Library  AppiumLibrary
* Test Cases *
Take Pic
    ${time}     Evaluate    8.78+1
    ${res}      Evaluate    ${time} % 100

    Log To Console    10MB per ${res}


