*** Settings ***
Resource    ../variables/mainVariables.resource
Library     SeleniumLibrary

*** Keywords ***
Abrir o navegador
    Open Browser     browser=${brouser}    url=${url}
    Set Selenium Implicit Wait    10s
    Maximize Browser Window

Fechar o navegador
    Close Browser

Fechar todos os navegadores
    Close All Browsers