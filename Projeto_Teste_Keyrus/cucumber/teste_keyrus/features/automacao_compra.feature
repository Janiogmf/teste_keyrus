#language: pt

Funcionalidade: Acessar site de ecomerce
    Para que finalize a compra de um produto via boleto.

    Cenario: finalizar pedido com boleto.
    Dado que acesse o site.
    Entao escolher um produto aleatorio da pagina inicial.
    E incluir no carrinho.
    Entao finalizar carrinho.
    Entao fazer cadastro do comprador com email "keyrustestautomation@gmail.com" e cpf "87270839000".
    E finalizar pedido com boleto.
    Entao validar mensagem de finalizacao.
