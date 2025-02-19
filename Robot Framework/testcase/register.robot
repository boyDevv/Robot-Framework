*** Settings ***
Resource    ../resources/import.robot

Suite Setup         Open Browser    ${url}    chrome    
Suite Teardown      Close Browser


*** Test Cases ***
Register Member
    Maximize Browser Window

    homepage.Wait until element is ready then click element    ${Register_button}

    registerKeywords.Wail until element is ready then input data    ${Email_field}    ${email}
    registerKeywords.Wail until element is ready then input data    ${Firstname_field}    ${fname}
    registerKeywords.Wail until element is ready then input data    ${Lastname_field}    ${lname}
    registerKeywords.Wail until element is ready then input data    ${Phone_field}    ${phone}
    registerKeywords.Wail until element is ready then input password    ${Password_field}    ${password}
    registerKeywords.Wail until element is ready then input password   ${Connfirm_password_field}    ${password}
    registerKeywords.Wail until element is ready then check box    ${Consent_field} 
    
    homepage.Wait until element is ready then click element    ${Register_button} 

    ${text}  common.Wail until element is ready then get text      ${Text_center_field} 
    Should Be Equal    ${text_center}    ${text}
