*** Setting ***
Library      SeleniumLibrary

*** Keyword ***
LaunchBrowser
        [Arguments]          ${appurl}      ${appbrowser}
        Open Browser        ${appurl}      ${appbrowser}
        Maximize Browser Window