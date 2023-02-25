*** Settings ***
Documentation     Este teste faz login e compras no e-commerce da Swag Labs
Resource          ../resources/resource.robot

Suite Setup       abrir navegador e efetuar login    ${login}    ${password}
Suite Teardown    fechar navegador

*** Test Cases ***
Verificar filtro de usuário
    clicar no filtro 
    selecionar o filtro de Z to A 
    selecionar o filtro de low to high
    selecionar o filtro de high to low
Comprar produtos
    clicar no produto Sauce Labs Fleece Jacket
    clicar no produto Sauce Labs Onesie  
    clicar no produto Sauce Labs Bolt T-Shirt
    clicar no carrinho 
    verificar se o produto está no carrinho
    clicar em checkout 
    inserir nome 
    inserir sobrenome
    inserir CEP 
    clicar em continue
    clicar em finish

