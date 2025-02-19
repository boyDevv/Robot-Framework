*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${loactor}
    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Click Element    ${loactor}