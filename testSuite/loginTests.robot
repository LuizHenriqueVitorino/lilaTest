*** Settings ***
Resource    ../steps/mainSteps.resource
Resource    ../resource/setups.resource
Test Setup   Abrir o navegador
Test Teardown    Fechar o navegador
Library    Screenshot

*** Test Cases ***
CT01 - Login com sucesso
    Informar o Usuário
    Informar a Senha
    Verificar se o botão está habilitado
    Clicar no botão entrar  
    Verificar mensagem de confirmação de login
    Verificar todas as opções do menu

CT02 - Login sem informar o Usuário
    Informar a Senha
    Verificar se o botão está desabilitado

CT03 - Login sem informar a Senha
    Informar o Usuário
    Verificar se o botão está desabilitado

CT04 - Login com Senha incorreta
    Informar o Usuário
    Informar Senha incorreta
    Verificar se o botão está habilitado
    Clicar no botão entrar  
    Verificar mensagem de erro de login com senha incorreta

CT05 - Login com Usuário inválido
    Informar Usuário inválido
    Informar a Senha
    Verificar se o botão está habilitado
    Clicar no botão entrar
    Verificar mensagem de erro de login com usuário inválido

