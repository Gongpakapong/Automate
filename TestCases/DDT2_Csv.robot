*** Settings ***
Documentation    Data Driven Testing Using CSV File
Library         SeleniumLibrary
Resource        ../Resources/Login_resources.robot
Library         DataDriver      ../TestData/LoginData.csv

Suite Setup         Open
Suite Teardown      Close
Test Template       InvalidLogin
*** Test Cases ***
LoginTestwithCSV using ${username} and ${password}

*** Keywords ***
InvalidLogin
    [Arguments]             ${username}         ${password}
    InputUsername         ${username}
    InputPWD                ${password}
    ClickLoginButton
