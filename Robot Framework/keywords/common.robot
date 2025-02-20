*** Settings ***
Library     SeleniumLibrary


*** Keywords ***

Wail until element is ready then get text
    [Arguments]    ${locator}
    Builtin.Wait Until Keyword Succeeds    5x    3s    SeleniumLibrary.Element Should Be Visible    ${locator}
    ${text}    Get Text    ${locator}
    # Log To Console    ${text}
    RETURN    ${text}
