*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
Log in
    Maximize Browser Window
    SeleniumLibrary.Input Text    name=user-name    standard_user
    SeleniumLibrary.Input Password    name=password      secret_sauce
    SeleniumLibrary.Click Button        id=login-button
