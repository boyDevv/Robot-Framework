*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${loactor}
    Wait Until Keyword Succeeds    3x    3s    Click Element    ${loactor}

Wail until element is ready then input data
    [Arguments]    ${loactor}    ${data}

    Wait Until Keyword Succeeds    3x    3s    Input Text    ${loactor}    ${data}
Wail until element is ready then check box
    [Arguments]    ${loactor}
     Wait Until Keyword Succeeds    3x    3s    Select Checkbox    ${loactor}

Wail until element is ready then get text
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    3s    Element Should Be Visible    ${locator}
    ${text}    Get Text    ${locator}
    Log To Console    ${text}
    [Return]    ${text}
