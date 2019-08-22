#language: pt

Funcionalidade: Acessar site de ecomerce
    Para que finalize a compra de um produto via boleto.

    Cenario: finalizar pedido com boleto.
    Dado que acesse o site.
    Entao escolher um produto aleatorio da pagina inicial.
    E incluir no carrinho.
    Entao validar inclusao no carrinho.
    Entao fazer cadastro do comprador com email "keyrustestautomation5@gmail.com" e cpf "40133859029".
    E validar tela de resumo.
    E finalizar pedido com boleto.
    Entao validar mensagem de finalizacao.
