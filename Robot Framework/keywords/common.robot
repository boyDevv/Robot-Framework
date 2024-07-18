*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${loactor}
    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Click Element    ${loactor}

Wail until element is ready then input data
    [Arguments]    ${loactor}    ${data}

    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Input Text    ${loactor}    ${data}

Wail until element is ready then input password
    [Arguments]    ${loactor}    ${data}

    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Input Text    ${loactor}    ${data}

Wail until element is ready then check box
    [Arguments]    ${loactor}
    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Select Checkbox    ${loactor}

Wail until element is ready then get text
    [Arguments]    ${locator}
    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Element Should Be Visible    ${locator}
    ${text}    Get Text    ${locator}
    Log To Console    ${text}
    RETURN    ${text}
