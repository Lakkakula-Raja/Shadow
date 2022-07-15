    IF  '${MODE}'=='LTE/3G/2G (auto connect)'
        AppiumLibrary.Click Element         //android.widget.CheckedTextView[@text="${Mode}"]
    ELSE IF  '${MODE}'== '3G/2G (auto connect)'
        AppiumLibrary.Click Element         //android.widget.CheckedTextView[@text="${Mode}"]
    END