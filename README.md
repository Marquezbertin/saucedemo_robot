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
```

Navegue até o diretório do projeto:
```sh
cd automatizacao_robot
```
Instale as dependências:

```sh
pip install -r requirements.txt
```
Certifique-se de que o chromedriver está instalado e disponível no PATH do seu sistema.

## Executando os Testes

Para executar os testes, navegue até o diretório do teste específico e execute o comando:
```sh
robot tests/nome_do_teste.robot
```

Exemplo para o teste de login e logout:

```sh
cd 1- login_logout/tests
robot login_logout.robot
```

Exemplo para o teste de adicionar e remover produto:

```sh
cd 2- add_and_remove_product/tests
robot add_and_remove_product.robot
```

### Notas

1. **Requisitos**: Certifique-se de ter um arquivo `requirements.txt` no projeto com as bibliotecas necessárias, por exemplo:

   ```txt
   robotframework
   robotframework-seleniumlibrary
Diretórios: Verifique se a estrutura dos diretórios e os nomes dos arquivos estão corretos.


