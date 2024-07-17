*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${loactor}
    Wait Until Keyword Succeeds    3x    3s    Click Element    ${loactor}

Wail until element is readt then input data
    [Arguments]    ${loactor}    ${data}
    Input Text    ${loactor}    ${data}
