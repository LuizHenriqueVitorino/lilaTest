*** Settings ***
Resource    ../resource/comom.resource
Library     FakerLibrary

*** Keywords ***
Informar o Usuário
    Escreva no Input    ${userInput}    ${user}

Informar a Senha
    Escreva no Input    ${passwordInput}    ${password}

Informar Senha incorreta
    ${radomPassword}    FakerLibrary.Text    max_nb_chars=${8}
    Escreva no Input    ${passwordInput}    ${radomPassword}

Informar Usuário inválido
    ${radomUser}    FakerLibrary.First Name    
    Escreva no Input    ${userInput}    ${radomUser}

Clicar no botão entrar
    Clique no botão     ${loginButton}

Realize o login
    Escreva no Input    ${userInput}    ${user}
    Escreva no Input    ${passwordInput}    ${password}
    Clique no botão     ${loginButton}


##========== Verificações ==========##
Verificar mensagem de erro de login com senha incorreta
    Localizar um Texto    ${errorLoginMessage}
    Verificar Texto    ${errorLoginMessage}    Senha inválida.    ${localizedText}

Verificar mensagem de erro de login com usuário inválido
    Localizar um Texto    ${errorLoginMessage}
    Verificar Texto    ${errorLoginMessage}    Usuário não encontrado.    ${localizedText}

Verificar se o botão está desabilitado
    Verificar se o elemento está desabilitado    locator=${loginButton}

Verificar se o botão está habilitado
    Verificar se o elemento está habilitado    locator=${loginButton}