*** Settings ***
Documentation    Data Driven Testing Using Excel File
Library            SeleniumLibrary
Resource        ../Resources/login_resources.robot
Library             DataDriver      ../TestData/LoginData.xlsx  sheet_name=Sheet1

Suite Setup         Open
Suite Teardown      Close
Test Template       InvalidLogin

*** Test Cases ***
LoginTestwithExcel using ${username} and ${password} and ${error_message}

*** Keywords ***
InvalidLogin
    [Arguments]             ${username}         ${password}         ${error_message}
    InputUsername         ${username}
    InputPWD                ${password}
    ClickLoginButton
    ErrorMessageShouldBeVisible     ${error_message}