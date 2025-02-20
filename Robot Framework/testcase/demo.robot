*** Settings ***
Resource    ../resources/import.robot

Suite Setup         Open Browser    ${url_demo}    chrome    
Suite Teardown      Close Browser
Test Setup    login_demo.Log in

*** Test Cases ***
Add Product to Cart
        @{product_name}   add_product.Search product to Cart   ${product_name}[product_name_1]     ${product_name}[product_name_2]
        FOR    ${index}    IN     @{product_name}
            Log To Console    ${index}
             add_product.Click Add Product To Cart     ${index} 
        END
        
       
