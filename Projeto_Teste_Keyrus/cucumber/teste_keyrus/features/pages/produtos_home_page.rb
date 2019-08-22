class HomeProdutosPage
    include Capybara::DSL
    def escolher_produto
        vitrine = find('.section.vitrine-1')
        produtos = vitrine.find_all(:css, '.owl-item')
        produtos[rand(produtos.size())].click 
    end

    def incluir_carrinho
        btnComprar = find(:css, '.btn.ir.buy')
        btnComprar.click
        page.within_frame('fancybox-frame') do
            brnFecharPedido = find(:css, '.fechar')
            brnFecharPedido.click
        end
    end

    def validar_inclusao
        btnContinuar = find("#lnkContinueBottom")
        btnContinuar.click
    end

    def cadastro(email, cpf)
        fill_in 'txtEmail2', with: email
        btnContinuarCadastro = find(".btn.ir.continue.cadastre")
        btnContinuarCadastro.click

        fill_in 'formcadastro_txtPFNome', with: 'Fulano'
        fill_in 'formcadastro_txtPFSobrenome', with: 'Teste Keyrus'
        fill_in 'formcadastro_txtPFCPF', with: cpf
        fill_in 'formcadastro_txtPFNascDia', with: '13'
        fill_in 'formcadastro_txtPFNascMes', with: '01'
        fill_in 'formcadastro_txtPFNascAno', with: '1988'

        select('Feminino', :from => "formcadastro_ddlSexo")

        fill_in 'formcadastro_txtSenha', with: 'abd12345'
        fill_in 'formcadastro_txtSenhaConfirmacao', with: 'abd12345'
        fill_in 'formcadastro_txtCep', with: '04855660'
        fill_in 'formcadastro_txtNumero', with: '30'
        fill_in 'formcadastro_txtComplemento', with: 'Teste Complemento'

        select('Comercial', :from => "formcadastro_ddlEndereco")
        select('MG', :from => "formcadastro_ddlEstado")

        fill_in 'txtTel1Ddd', with: '11'
        fill_in 'txtTel1', with: '56613030'
        fill_in 'txtTelCelDdd', with: '11'
        fill_in 'txtTelCel', with: '956613030'
        fill_in 'formcadastro_txtRefEndereco', with: 'Referencia teste'

        btnSalvarCadastro = find('#formcadastro_btnSalvar')
        btnSalvarCadastro.click
        confirmar_alert
    end

    def confirmar_alert
        page.accept_alert
    end

    def finalizar_pedido
        radioBoleto = find('#rptFormaPagamento_ctl01_5')
        radioBoleto.click
    end

    def validar_msg_finalizacao
        btnFecharPedido =  find(".btn.ir.close")
        btnFecharPedido.click
    
        page.assert_selector('h1', :text => 'Pedido realizado com sucesso!', :visible => true)
    end
end
    