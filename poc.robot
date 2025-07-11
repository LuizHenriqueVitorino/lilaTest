*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}=     http://207.180.218.22:9000/login
${brouser}=     Chrome

*** Keywords ***
Acesse o site do brabo
    Open Browser    browser=${brouser}    url=${url}
*** Test Cases ***
CT01 - Teste do poc
    Acesse o site do brabo

***