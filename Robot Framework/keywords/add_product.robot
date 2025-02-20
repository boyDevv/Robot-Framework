*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Click Add Product To Cart
    [Arguments]    ${product}
    SeleniumLibrary.Click Button    //div[text()='${product}']/ancestor::div[@class='inventory_item']//button

Search Product To Cart
    [Arguments]    ${product1}    ${product2}
    @{product_name}    Create List    ${product1}    ${product2}
    RETURN       @{product_name}