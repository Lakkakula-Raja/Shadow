*** Settings ***
Resource    ../var/chrome_var.robot
Resource    ../var/device_var.robot


*** Keywords ***
open chrome
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${deviceName}
    ...                 appPackage=${Chrome_package}    appActivity=${Chrome_Launcher}     noReset=${True}
search for http downlode
    AppiumLibrary.Input Text    id=search_box_text      https://fastest.fish/test-files
    Sleep    1s
    AppiumLibrary.press keycode           66
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.ImageButton[@content-desc="More options"]
    Sleep    2s
    AppiumLibrary.Click Element    //android.widget.TextView[@text="Desktop site"]
    #AppiumLibrary.Click Element    //android.widget.Button[text="Download"]

make downlode http
    AppiumLibrary.Click Element    //android.widget.Button[@text="10MB"]
    AppiumLibrary.Wait Until Page Contains    Download again     timeout=60s
    AppiumLibrary.Click Element    //android.widget.Button[@text="Download again"]
    AppiumLibrary.Wait Until Page Contains    File downloaded     timeout=600s

open new tab
    AppiumLibrary.Click Element    //android.widget.ImageButton[@content-desc="More options"]
    AppiumLibrary.Click Element    //android.widget.TextView[@text="New tab"]
