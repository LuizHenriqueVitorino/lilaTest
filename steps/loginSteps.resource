*** Settings ***
Resource    ../resource/comom.resource
Library     FakerLibrary

*** Keywords ***
Informar o Usuário
    Escrever no Input    ${userInput}    ${user}

Informar a Senha
    Escrever no Input    ${passwordInput}    ${password}

Informar Senha incorreta
    ${radomPassword}    FakerLibrary.Text    max_nb_chars=${8}
    Escrever no Input    ${passwordInput}    ${radomPassword}

Informar Usuário inválido
    ${radomUser}    FakerLibrary.First Name    
    Escrever no Input    ${userInput}    ${radomUser}

Clicar no botão entrar
    Clicar no botão     ${loginButton}

Realizar o login
    Informar o Usuário
    Informar a Senha
    Clicar no botão entrar


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