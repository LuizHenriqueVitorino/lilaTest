*** Settings ***
Resource    ../variables/mainVariables.resource
Library     SeleniumLibrary

*** Keywords ***
Abrir o navegador
    Open Browser     browser=${brouser}    url=${url}

Fechar o navegador
    Close Browser

Fechar todos os navegadores
    Close All Browsers