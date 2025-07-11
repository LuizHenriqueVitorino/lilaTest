*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/mainVariables.resource

*** Keywords ***
Escreva no Input
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    locator=${locator}
    Input Text    locator=${locator}    text=${text}

Clique no botão
    [Arguments]    ${button}
    Wait Until Element Is Visible    locator=${button}
    Click Button    locator=${button}