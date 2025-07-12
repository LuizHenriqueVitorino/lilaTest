*** Settings ***
Resource        ../pages/mainPages.resource
Resource        ../resource/setups.resource
Resource    ../pages/requestsPage.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT01 - Criar Pedido com sucesso
    Realizar o login
    Clicar na opção de Pedidos
    Clicar no botão de novo Pedido
