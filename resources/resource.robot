*** Settings ***
Library    RequestsLibrary
Library    Selenium2Library
Library    XML

*** Variables ***
${url}           https://www.saucedemo.com/
${login}         standard_user
${password}      secret_sauce
${text}          carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.   
${filterZtoA}    This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.

*** Keywords ***


abrir navegador e efetuar login
     [Arguments]    ${login}    ${password}
    Open Browser    browser=chrome
    Maximize Browser Window
    Go To    ${url}
    Wait Until Element Contains       //h4[contains(.,'Password for all users:')]    Password for all users:
    Input Text                        user-name    ${login}
    Input Password                    password    ${password}
    Click Button                      login-button
    Wait Until Element Is Visible     (//div[@class='inventory_item_desc'])[1]   
    Wait Until Page Contains          ${text}
    
fechar navegador
    Capture Page Screenshot
    Close Browser

clicar no filtro
    Click Element    //select[contains(@class,'container')]
selecionar o filtro de Z to A
    Click Element                  //option[contains(.,'Name (Z to A)')]
    Wait Until Element Contains    (//div[@class='inventory_item_desc'])[1]    ${filterZtoA}
    Sleep    2       
selecionar o filtro de low to high
    Click Element                  //option[contains(.,'Price (low to high)')]
    Wait Until Element Contains    (//div[contains(.,'$7.99')])[11]    $7.99
    Sleep    2   
selecionar o filtro de high to low
    Click Element                  //option[contains(.,'Price (high to low)')]
    Wait Until Element Contains    //div[@class='inventory_item_price'][contains(.,'$49.99')]    $49.99
    Sleep    2
clicar no produto Sauce Labs Fleece Jacket
    Click Button    add-to-cart-sauce-labs-fleece-jacket
clicar no produto Sauce Labs Onesie
    Click Button    add-to-cart-sauce-labs-onesie
clicar no produto Sauce Labs Bolt T-Shirt
    Click Button    add-to-cart-sauce-labs-bolt-t-shirt
clicar no carrinho
    Click Element    //a[contains(@class,'link')]
verificar se o produto está no carrinho
    Wait Until Element Contains    //div[@class='inventory_item_price'][contains(.,'$49.99')]    $49.99
    Wait Until Element Contains    //div[@class='inventory_item_price'][contains(.,'$7.99')]     $7.99
    Wait Until Element Contains    //div[@class='inventory_item_price'][contains(.,'$15.99')]    $15.99
clicar em checkout
    Click Button    checkout
    Wait Until Element Contains    //span[@class='title']    CHECKOUT: YOUR INFORMATION
inserir nome
    Input Text    first-name     Daniella
inserir sobrenome    
    Input Text    last-name      Perino
inserir CEP    
    Input Text    postal-code    88054600

clicar em continue
    Click Button    continue
    Wait Until Element Contains    //div[@class='summary_info_label'][contains(.,'Payment Information:')]    Payment Information:
clicar em finish
    Click Button    finish
    Wait Until Element Contains    //h2    THANK YOU FOR YOUR ORDER


