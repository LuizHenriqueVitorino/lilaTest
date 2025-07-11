*** Settings ***
Resource    ../resource/comom.resource

*** Keywords ***
Informar o Usuário
    Escreva no Input    ${userInput}    ${user}

Informar a Senha
    Escreva no Input    ${passwordInput}    ${password}

Clicar no botão entrar
    Clique no botão     ${loginButton}

Realize o login
    Escreva no Input    ${userInput}    ${user}
    Escreva no Input    ${passwordInput}    ${password}
    Clique no botão     ${loginButton}

Verificar se o botão está desabilitado
    Verificar se o elemento está desabilitado    locator=${loginButton}

Verificar se o botão está habilitado
    Verificar se o elemento está habilitado    locator=${loginButton}