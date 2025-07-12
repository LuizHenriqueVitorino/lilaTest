*** Settings ***
Resource        ../pages/mainPages.resource
Resource        ../resource/setups.resource
Resource        ../pages/requestsPage.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT01 - Criar Pedido com sucesso
    Realizar o login
    Clicar na opção de Pedidos
    Clicar no botão de novo Pedido
    Selecionar o Cliente LUIZ HENRIQUE DA SILVA VITORINO
    Selecionar o status do Pedido como Confirmado
    Selecionar a Forma de Pagamento como Dinheiro
    Inserir o valor R$100 no total do Pedido
    Inserir o valor R$80 no valor Pago
    Selecionar o produto BOLO M
    Selecionar o produto BOLO M DUO 
    Selecionar o Produto 25 DOCES CASADINHO
    Sleep    5s