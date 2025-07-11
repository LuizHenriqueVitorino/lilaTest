*** Settings ***
Resource    ../resource/comom.resource

*** Keywords ***



## Verificaçãoes
Verificar mensagem de confirmação de login
    Localizar um Texto    ${loginMessage}
    Verificar Texto    locator=${loginMessage}    
    ...                expectedText=Você está logado(a)!    
    ...                text=${localizedText}

Verificar a opção de Pedidos
    Localizar um Texto    locator=${requestsButton}
    Verificar Texto    locator=${requestsButton}
    ...                expectedText=Pedidos
    ...                text=${localizedText}

Verificar a opção de Produtos
    Localizar um Texto    locator=${productsButton}
    Verificar Texto    locator=${productsButton}
    ...                expectedText=Produtos
    ...                text=${localizedText}
   
Verificar a opção de Estoque
    Localizar um Texto    locator=${stockButton}
    Verificar Texto    locator=${stockButton}
    ...                expectedText=Estoque
    ...                text=${localizedText}

Verificar a opção de Fluxo de caixa
    Localizar um Texto    locator=${cashFlowButton}    
    Verificar Texto    locator=${cashFlowButton}
    ...                expectedText=Fluxo de caixa
    ...                text=${localizedText}

Verificar a opção de Clientes
    Localizar um Texto    locator=${custumerButton}
    Verificar Texto    locator=${custumerButton}
    ...                expectedText=Clientes
    ...                text=${localizedText}
    
Verificar a opção de Usuários
    Localizar um Texto    locator=${userButton}            
    Verificar Texto    locator=${userButton}
    ...                expectedText=Usuários
    ...                text=${localizedText}

Verificar a opção de Ingredientes
    Localizar um Texto    locator=${ingredientsButton}    
    Verificar Texto    locator=${ingredientsButton}
    ...                expectedText=Ingredientes    
    ...                text=${localizedText}


Verificar todas as opções do menu
    Verificar a opção de Pedidos
    Verificar a opção de Produtos
    Verificar a opção de Estoque
    Verificar a opção de Fluxo de caixa
    Verificar a opção de Clientes
    Verificar a opção de Usuários
    Verificar a opção de Ingredientes