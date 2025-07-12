*** Settings ***
Resource    ../resource/comom.resource

*** Keywords ***
## ============== Cliques em elementos básicos ============== ##
Clicar no botão de novo Pedido
    Clicar no botão    ${addRequestButton}

Clicar em selecionar o Cliente
    Clicar na opção    ${custumerSelector}

Clicar no Cliente ${custumerName}
    Set Local Variable     ${custumerXpath}    //div[@role='listbox']//div[.='${custumerName}']
    Clicar na opção        ${custumerXpath}

Clicar em selecionar status do Pedido
    Clicar na opção    ${orderStatusSelector}

Clicar no status ${statusName}
    Set Local Variable     ${statusXpath}    //div[@role='option']/div[.='${statusName}']
    Clicar na opção        ${statusXpath}

Clicar em selecionar Forma de Pagamento
    Clicar na opção    ${paymentMethodSelector}

Clicar na Forma de Pagamento ${paymentMethod}
    Set Local Variable     ${paymentMethodXpath}    //div[.='${paymentMethod}']
    Clicar na opção        ${paymentMethodXpath}

## ============== Seleção de elementos básicos ============== ##
Selecionar o Cliente ${custumerName}
    Clicar em selecionar o Cliente
    Clicar no Cliente ${custumerName}

Selecionar o status do Pedido como ${statusName}
    Clicar em selecionar status do Pedido
    Clicar no status ${statusName}

Selecionar a Forma de Pagamento como ${paymentMethod}
    Clicar em selecionar Forma de Pagamento
    Clicar na Forma de Pagamento ${paymentMethod}
    