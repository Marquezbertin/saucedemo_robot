*** Settings ***
Resource  saucedemo_keywords.robot

*** Test Cases ***
Teste Login E Logout No SauceDemo
    Logar No SauceDemo
    Clicar No Menu
    Verificar E Clicar No Logout
    Fechar Navegador
