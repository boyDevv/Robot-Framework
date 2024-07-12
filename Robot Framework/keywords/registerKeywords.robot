*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
input email
    [Arguments]    ${data}
    Input Text    name=email   ${data}

input firstname and input lastname
    [Arguments]    ${fname}    ${lname}
    Input Text    name=firstName    ${fname}
    Input Text    name=lastName    ${lname}

input phone
    [Arguments]    ${data}
    Input Text    name=phoneNumber    ${data}

input newpassword and input confirmpassword
    [Arguments]    ${data}
    Input Text    name=newPassword    ${data}
    Input Text    name=confirmPassword    ${data}

select consent
    Select Checkbox    name=consent

click button confirm register
    Click Element    //button[@type="submit" and text()="สมัครสมาชิก"]
