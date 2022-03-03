*** Settings ***
Documentation    Data Driven Testing Using Script
Library                 SeleniumLibrary
Resource            ../Resources/login_resources.robot

Suite Setup          Open
Suite Teardown    Close
Test Template      InvalidLogin

*** Test Cases ***                                              username                password                    error_message
username and password wrong                               adm@yourstone.com              xyz             Login was unsuccessful.
username right but password wrong                        admin@yourstone.com            xyz             Login was unsuccessful.
username empty but password right                        ${EMPTY}                            admin           Please enter your email
username right but password empty                        admin@yourstone.com         ${EMPTY}        Login was unsuccessful.
username and password empty                               ${EMPTY}                          ${EMPTY}       Please enter your email
username wrong but password right                        adm@yourstone.com            admin           Login was unsuccessful.
username wrong but password empty                      adm@yourstone.com            ${EMPTY}      Login was unsuccessful.

*** Keywords ***
InvalidLogin
    [Arguments]             ${username}         ${password}         ${error_message}
    InputUsername         ${username}
    InputPWD                ${password}
    ClickLoginButton
    ErrorMessageShouldBeVisible     ${error_message}
