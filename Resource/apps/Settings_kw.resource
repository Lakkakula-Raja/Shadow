*** Settings ***
Documentation       it is used for Message var and KW
Resource    ../Base/CommonFunctionality.resource

*** Variables ***
#set your data settings app variable
${DataSetting_package}     com.remifayolle.android.datasettings
${DataSetting_Launcher}    com.remifayolle.android.datasettings.DataSettingsActivity

*** Keywords ***
#not for my case
Launch Settings App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}
                            ....      appPackage=com.android.settings       appActivity=com.oppo.settings.SettingsActivity
                            ....      noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s
Open DataSettings Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${DataSetting_package}   appActivity=${DataSetting_Launcher}      noReset=${True}

Network set to
    [Arguments]     ${MODE}
    AppiumLibrary.Click Element         //android.widget.TextView[@text="Network mode"]
    AppiumLibrary.Click Element         //android.widget.CheckedTextView[@text="${Mode}"]
    AppiumLibrary.Click Element         //android.widget.ImageButton[@content-desc="Navigate up"]
APN set to
    set selenium implicit wait      30s
    [Arguments]     ${APN}
    #AppiumLibrary.Click Element    text="Access Point Names"
    Sleep    3s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Access Point Names"]
    # have to make generalization
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Vodafone Mobile connect"]
    Sleep    2s
    Scroll        //android.widget.TextView[@text="MMS port"]       //android.widget.TextView[@text="Server"]
    Sleep    2s
    Scroll        //android.widget.TextView[@text="APN type"]       //android.widget.TextView[@text="MMS port"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="APN protocol"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.CheckedTextView[@text="${APN}"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.ImageView[@content-desc="More options"]
    Sleep    2s
    AppiumLibrary.Click Element     //android.widget.TextView[@text="Save"]
    Sleep    2s
    AppiumLibrary.Click Element     //android.widget.ImageButton[@content-desc="Navigate up"]
    Sleep    2s
    AppiumLibrary.Click Element     //android.widget.ImageButton[@content-desc="Navigate up"]
