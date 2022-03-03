*** Settings ***
Library             SeleniumLibrary
*** Variables ***
${loginurl}         https://admin-demo.nopcommerce.com
${browser}          chrome
*** Keywords ***
Open
    Open Browser        ${loginurl}         ${browser}
    Maximize Browser Window

Close
    Close Browser

InputUsername
    [Arguments]         ${username}
    Input Text          name:Email               ${username}
InputPWD
    [Arguments]         ${password}
    Input Text          name:Password               ${password}
ClickLoginButton
    Click Element       xpath://button[@class='button-1 login-button']
ErrorMessageShouldBeVisible
    [Arguments]         ${error_message}
    Page Should Contain        ${error_message}


