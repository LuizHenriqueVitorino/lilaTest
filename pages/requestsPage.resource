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

Clicar no botão de adicionar Produto
    Clicar no botão    ${addProductButton}

Clicar em selecionar o Produto
    Clicar na opção    ${productSelector}

Clicar no Produto ${productName}
    Set Local Variable     ${productXpath}    //div[@role='option'][.='${productName}']
    Clicar na opção        ${productXpath}

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

Selecionar o Produto ${productName}
    Clicar no botão de adicionar Produto
    Clicar em selecionar o Produto
    Clicar no Produto ${productName}

## ============== Preenchimento de campos básicos ============== ##
Inserir o valor R$${totalOrderValue} no total do Pedido
    Escrever no Input    ${totalValueInput}    ${totalOrderValue}

Inserir o valor R$${amountPaid} no valor Pago
    Escrever no Input    ${amountPaidInput}    ${amountPaid}

## ============== Verificações de elementos básicos ============== ##