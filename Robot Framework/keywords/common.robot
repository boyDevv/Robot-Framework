*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${loactor}
    Wait Until Keyword Succeeds    2x    2s    Click Element    ${loactor}
 

   