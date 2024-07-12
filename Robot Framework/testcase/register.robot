*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/common.robot
Resource        ../keywords//registerKeywords.robot
Variables       ../resources/config.yaml
Variables       ../resources/testdata.yaml

Suite Setup     Open Browser    ${url}    chrome
Suite Teardown    Close Browser


*** Test Cases ***
Register 
    common.Wait until element is ready then click element    //button[text()="สมัครสมาชิก"]  
    registerKeywords.input email    ${email}
    registerKeywords.input firstname and input lastname    ${fname}    ${lname}
    registerKeywords.input phone    ${phone}
    registerKeywords.input newpassword and input confirmpassword    ${password}
    registerKeywords.select consent
    registerKeywords.click button confirm register
    ${data}    Wait Until Keyword Succeeds    2x    4s   Get Text    //*[@class='text-center']
    Should Be Equal   ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์XX-XXXX-0001     ${data}
    Sleep    5s
    