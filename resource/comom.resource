*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/mainVariables.resource

*** Keywords ***
Escrever no Input
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    locator=${locator}
    Input Text    locator=${locator}    text=${text}

Clicar no botão
    [Arguments]    ${button}
    Wait Until Element Is Visible    locator=${button}
    Click Button    locator=${button}

Clicar na opção
    [Arguments]    ${option}
    Wait Until Element Is Visible    locator=${option}
    Click Element    locator=${option}

Verificar Texto
    [Arguments]    ${locator}    ${expectedText}    ${text}
    Wait Until Element Is Visible    locator=${locator}
    Should Be Equal    ${expectedText}    ${text}

Localizar um Texto
    [Arguments]    ${locator}
    Wait Until Element Is Visible    locator=${locator}
    ${localizedText}     Get Text    locator=${locator}
    Set Test Variable    ${localizedText}
    
Verificar se o elemento está habilitado
    [Arguments]    ${locator}
    Wait Until Element Is Visible    locator=${locator}
    Element Should Be Enabled    locator=${locator}

Verificar se o elemento está desabilitado
    [Arguments]    ${locator}
    Wait Until Element Is Visible    locator=${locator}
    Element Should Be Disabled    locator=${locator}