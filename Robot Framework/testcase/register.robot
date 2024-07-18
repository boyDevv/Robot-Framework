*** Settings ***
Library             SeleniumLibrary
Resource            ../keywords/common.robot
Resource            ../keywords//registerKeywords.robot
Variables           ../resources/config.yaml
Variables           ../resources/testdata.yaml

Suite Setup         Open Browser    ${url}    chrome
Suite Teardown      Close Browser


*** Test Cases ***
Register Member
    common.Wait until element is ready then click element    //button[text()="สมัครสมาชิก"]
    common.Wail until element is ready then input data    name=email    ${email}
    common.Wail until element is ready then input data    name=firstName    ${fname}
    common.Wail until element is ready then input data    name=lastName    ${lname}
    common.Wail until element is ready then input data    name=phoneNumber    ${phone}
    common.Wail until element is ready then input password    name=newPassword    ${password}
    common.Wail until element is ready then input password   name=confirmPassword    ${password}
    common.Wail until element is ready then check box    name=consent
    common.Wait until element is ready then click element    //button[@type="submit" and text()="สมัครสมาชิก"]
    ${text}  common.Wail until element is ready then get text      //*[@class='text-center']
    Should Be Equal    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์XX-XXXX-0001    ${text}
