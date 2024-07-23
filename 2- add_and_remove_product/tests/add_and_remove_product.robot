*** Settings ***
Resource  ../saucedemo_keywords.robot

*** Test Cases ***
Teste Incluir E Remover Produto No SauceDemo
    Logar No SauceDemo
    Selecionar Produto Sauce Labs Backpack
    Adicionar Produto Ao Carrinho
    Remover Produto Do Carrinho
    Clicar No Menu
    Verificar E Clicar No Logout
    Fechar Navegador
