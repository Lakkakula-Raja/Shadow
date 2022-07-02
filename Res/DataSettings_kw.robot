*** Settings ***
Resource    ../var/DataSettings_var.robot
*** Keywords ***

Open DataSettings Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${DataSetting_package}   appActivity=${DataSetting_Launcher}      noReset=${True}

GoTo APN
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Access Point Names"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Vodafone Mobile connect"]
    Sleep    2s
    Scroll        //android.widget.TextView[@text="MMS port"]       //android.widget.TextView[@text="Server"]
    Sleep    2s
    Scroll        //android.widget.TextView[@text="APN type"]       //android.widget.TextView[@text="MMS port"]
Network set to
    [Arguments]     ${Mode}
    AppiumLibrary.Click Element         //android.widget.TextView[@text="Network mode"]
    AppiumLibrary.Click Element         //android.widget.CheckedTextView[@text="${Mode}"]
    AppiumLibrary.Click Element         //android.widget.ImageButton[@content-desc="Navigate up"]
APN set to
    [Arguments]     ${APN}

    AppiumLibrary.Click Element    //android.widget.TextView[@text="APN protocol"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.CheckedTextView[@text="${APN}"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.ImageView[@content-desc="More options"]
    Sleep    2s
    AppiumLibrary.Click Element     //android.widget.TextView[@text="Save"]
    
Back From APN
    AppiumLibrary.Click Element     //android.widget.ImageButton[@content-desc="Navigate up"]
    Sleep    2s
    AppiumLibrary.Click Element     //android.widget.ImageButton[@content-desc="Navigate up"]

