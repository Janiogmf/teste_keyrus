  Dado("que acesse o site.") do
    visit "https://www.centermega.com.br"
  end
  
  Entao("escolher um produto aleatorio da pagina inicial.") do
    @home_produtos_page.escolher_produto
  end
  
  Entao("incluir no carrinho.") do
    @home_produtos_page.incluir_carrinho
  end
  
  Entao("validar inclusao no carrinho.") do
    @home_produtos_page.validar_inclusao
  end
  
  Entao("fazer cadastro do comprador com email {string} e cpf {string}.") do |email, cpf|
    @home_produtos_page.cadastro(email, cpf)
  end

  Entao("validar tela de resumo.") do
    
  end
  
  Entao("finalizar pedido com boleto.") do
    @home_produtos_page.finalizar_pedido
  end
  
  Entao("validar mensagem de finalizacao.") do
    @home_produtos_page.validar_msg_finalizacao
  end