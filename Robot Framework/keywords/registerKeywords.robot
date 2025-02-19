*** Settings ***
Library     SeleniumLibrary
*** Keywords ***

Wail until element is ready then input data
    [Arguments]    ${loactor}    ${data}

    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Input Text    ${loactor}    ${data}

Wail until element is ready then input password
    [Arguments]    ${loactor}    ${data}

    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Input Text    ${loactor}    ${data}

Wail until element is ready then check box
    [Arguments]    ${loactor}
    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Select Checkbox    ${loactor}