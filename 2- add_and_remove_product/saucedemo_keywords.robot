*** Settings ***
Library  SeleniumLibrary
Library  Screenshot

*** Variables ***
${URL}          https://www.saucedemo.com/
${USERNAME}     standard_user
${PASSWORD}     secret_sauce

*** Keywords ***
Abrir Navegador E Navegar Para SauceDemo
    Open Browser  ${URL}  chrome
    Maximize Browser Window
    Capture Page Screenshot
    Log  Página inicial carregada.

Inserir Usuário E Senha
    Input Text  id=user-name  ${USERNAME}
    Input Text  id=password  ${PASSWORD}
    Capture Page Screenshot
    Log  Usuário e senha inseridos.

Clicar No Botão De Login
    Click Button  id=login-button
    Capture Page Screenshot
    Log  Botão de login clicado.

Logar No SauceDemo
    Abrir Navegador E Navegar Para SauceDemo
    Inserir Usuário E Senha
    Clicar No Botão De Login
    Wait Until Page Contains  Products
    Capture Page Screenshot
    Log  Logado com sucesso na página de produtos.

Selecionar Produto Sauce Labs Backpack
    Wait Until Element Is Visible  xpath=/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div  15s
    Click Element  xpath=/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div
    Capture Page Screenshot
    Log  Produto Sauce Labs Backpack selecionado.

Adicionar Produto Ao Carrinho
    Wait Until Element Is Visible  xpath=/html/body/div/div/div/div[2]/div/div/div[2]/button  15s
    Click Element  xpath=/html/body/div/div/div/div[2]/div/div/div[2]/button
    Capture Page Screenshot
    Log  Produto adicionado ao carrinho.

Remover Produto Do Carrinho
    Wait Until Element Is Visible  xpath=/html/body/div/div/div/div[2]/div/div/div[2]/button  15s
    Click Element  xpath=/html/body/div/div/div/div[2]/div/div/div[2]/button
    Capture Page Screenshot
    Log  Produto removido do carrinho.

Clicar No Menu
    Wait Until Element Is Visible  id=react-burger-menu-btn  15s
    Click Button  id=react-burger-menu-btn
    Capture Page Screenshot
    Log  Menu aberto.

Verificar E Clicar No Logout
    Wait Until Element Is Visible  xpath=//*[@id="logout_sidebar_link"]  15s
    Capture Page Screenshot
    Log  Tentando clicar no botão de logout.
    Click Element  xpath=//*[@id="logout_sidebar_link"]
    Capture Page Screenshot
    Log  Botão de logout clicado.

Fechar Navegador
    Capture Page Screenshot
    Close Browser
    Log  Navegador fechado.
