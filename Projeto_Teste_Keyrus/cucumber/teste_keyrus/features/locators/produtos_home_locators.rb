class HomeProdutosLocators
    include Capybara::DSL
    def produto 
        produtos = page.find_all(".owl-item")
    end
end