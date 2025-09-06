*** Variables ***
${addRequestButton}     //button[.='add']
${dateRequestButton}    //button/span/i[.='event']/../..
${deliverSelector}      //div[.='Entregues']
${statusSelector}       //div[.='Status']
${AllStatus}            //div[@role='option']//div[.='Todos']
${pendingStatus}        //div[@role='option']//div[.='Pendente']
${confirmedStatus}      //div[@role='option']//div[.='Confirmado']
${finishedStatus}       //div[@role='option']//div[.='Finalizado']
${deliveredStatus}      //div[@role='option']//div[.='Entregue']

##=========== CAIXA DE DIÁLOGO DE NOVO PEDIDO ===========##
${custumerSelector}          //div[@id='q-portal--dialog--1']//div[.='Cliente']
${addCustumerButton}         //div[.='Cliente']/../../../..//button[.='add']
${orderStatusSelector}       //div[.='Status do Pedido']/..
${paymentMethodSelector}     //div[.='Forma de Pagamento']/..
${totalValueInput}           //div[.='Valor Total']/../input
${amountPaidInput}           //div[.='Valor Pago']/../input
${addProductButton}          //div[@id='q-portal--dialog--1']//div[.='Produtos']/../button
${productSelector}           //div[.='Produtos']/../..//input[@type='search'][@value='']
${deliveryDateSelector}      //div[.='Data de Entrega']//input
${deliveryTimeInput}         //div[.='Hora de Entrega']//input
${orderDetailsInput}         //div[.='Detalhes']//input
${orderObserationTextarea}   //div[.='Observações']//textarea
${addImageButton}            //div/a[.='add_box']
${cancelButton}              //button[.='Cancelar']
${saveButton}                //button[.='Salvar']
