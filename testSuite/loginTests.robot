*** Settings ***
Resource    ../pages/mainPages.resource
Resource    ../resource/setups.resource
Test Setup   Abrir o navegador
Test Teardown    Fechar o navegador
Library    Screenshot

*** Test Cases ***
CT01 - Login com sucesso
    Informar o Usuário
    Informar a Senha
    Clicar no botão entrar  

CT02 - Login sem informar o Usuário
    Informar a Senha
    Clicar no botão entrar

CT03 - Login sem informar a Senha
    Informar o Usuário
    Clicar no botão entrar