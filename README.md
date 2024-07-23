# Automatização de Testes com Robot Framework no Site SauceDemo

Este projeto está sendo desenvolvido para automatizar todas as funcionalidades do site de compras de teste [SauceDemo](https://www.saucedemo.com/). Utilizando o Robot Framework e SeleniumLibrary, estamos construindo uma suíte de testes robusta para garantir que todas as funcionalidades do site estejam funcionando corretamente.

## Estrutura do Projeto

automatizacao_robot/
├── 1- login_logout/
│ ├── tests/
│ │ └── login_logout.robot
│ └── saucedemo_keywords.robot
├── 2- add_and_remove_product/
│ ├── tests/
│ │ └── add_and_remove_product.robot
│ └── saucedemo_keywords.robot
├── requirements.txt
└── README.md


## Pré-requisitos

- Python 3.x
- Robot Framework
- SeleniumLibrary
- Webdriver para o Chrome (chromedriver)

## Instalação

1. Clone este repositório:

```sh
git clone https://github.com/seuusuario/automatizacao_robot.git
Navegue até o diretório do projeto:
sh
Copiar código
cd automatizacao_robot
Instale as dependências:
sh
Copiar código
pip install -r requirements.txt
Certifique-se de que o chromedriver está instalado e disponível no PATH do seu sistema.
Executando os Testes
Para executar os testes, navegue até o diretório do teste específico e execute o comando:

sh
Copiar código
robot tests/nome_do_teste.robot
Exemplo para o teste de login e logout:

sh
Copiar código
cd 1- login_logout/tests
robot login_logout.robot
Exemplo para o teste de adicionar e remover produto:

sh
Copiar código
cd 2- add_and_remove_product/tests
robot add_and_remove_product.robot
Descrição dos Testes
Teste de Login e Logout
Este teste realiza as seguintes ações no site SauceDemo:

Abre o navegador Chrome.
Navega para o site SauceDemo.
Faz login com as credenciais standard_user e secret_sauce.
Clica no menu.
Faz logout do site.
Fecha o navegador.
Teste de Inclusão e Remoção de Produto
Este teste realiza as seguintes ações no site SauceDemo:

Abre o navegador Chrome.
Navega para o site SauceDemo.
Faz login com as credenciais standard_user e secret_sauce.
Seleciona o produto "Sauce Labs Backpack".
Adiciona o produto ao carrinho.
Remove o produto do carrinho.
Faz logout do site.
Fecha o navegador.
Keywords Customizadas
Os arquivos de keywords customizadas estão no arquivo saucedemo_keywords.robot. Este arquivo contém keywords para ações como abrir o navegador, logar, selecionar produtos, adicionar e remover produtos do carrinho, e fazer logout.

Estrutura do Arquivo de Keywords

robot
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
Roadmap
 Automação de todas as funcionalidades do site SauceDemo.
 Implementação de mais testes de interface do usuário.
 Integração contínua com ferramentas de CI/CD.
Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

Licença
Este projeto está licenciado sob a MIT License.

markdown
Copiar código

### Notas

1. **Requisitos**: Certifique-se de ter um arquivo `requirements.txt` no projeto com as bibliotecas necessárias, por exemplo:

   ```txt
   robotframework
   robotframework-seleniumlibrary
Diretórios: Verifique se a estrutura dos diretórios e os nomes dos arquivos estão corretos.

Links e Nomes: Atualize os links e nomes de usuário conforme necessário.
